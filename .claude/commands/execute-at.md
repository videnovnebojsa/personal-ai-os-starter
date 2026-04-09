# Execute At

Schedule a prompt or slash command to run automatically at a specific time. One-shot - fires once, then deletes.

## Input
$ARGUMENTS

## Time Parsing

Parse the first part of the input as the time, and the rest as the action to execute.

Supported formats:
- **Relative**: `+20m`, `+1h`, `+2h30m` - offset from now
- **Absolute 12h**: `3:30pm`, `9am`, `11:45am` - today (or tomorrow if time has passed)
- **Absolute 24h**: `17:00`, `14:30`, `09:00` - today (or tomorrow if time has passed)

## Instructions

1. **Get the current time.** Run: `date '+%M %H %d %m %Y %A'` to get minute, hour, day, month, year, weekday.

2. **Parse the input.** Split into time and action:
   - `+30m /digest` → time: +30m, action: `/digest`
   - `9:00am /daily-plan` → time: 9:00am, action: `/daily-plan`
   - `14:00 Run tests and report` → time: 14:00, action: "Run tests and report"

3. **Detect action type:**
   - If the action starts with `/`, it's a **slash command** - the prompt should instruct Claude to invoke it via the Skill tool
   - Otherwise, it's a **freeform prompt** - pass it directly as the CronCreate prompt

4. **Calculate target time.**
   - For relative (`+Nm`, `+Nh`): add offset to current time
   - For absolute: use the given time, today. If the time has already passed today, schedule for tomorrow
   - Compute the target minute, hour, day-of-month, and month

5. **Create the cron job.** Call CronCreate with:
   - `cron`: `"[minute] [hour] [day] [month] *"` (all fields pinned)
   - `prompt`: For slash commands, use: `"Execute the slash command: [action]"`. For freeform, use the action text directly.
   - `recurring`: `false`

6. **Confirm.** Tell the user:
   ```
   Scheduled for [HH:MM]: [action]
   Job ID: [id] (cancel with CronDelete)
   This will execute automatically when it runs.
   ```

## Key Difference from /remind-me-at
- `/remind-me-at` → sends a reminder and **asks** what you want to do
- `/execute-at` → **runs the action** autonomously at the scheduled time

## Examples
```
/execute-at 9:00am /daily-plan
→ Scheduled for 09:00: /daily-plan

/execute-at +30m /digest
→ Scheduled for 15:00: /digest

/execute-at 14:00 Run tests and report results
→ Scheduled for 14:00: "Run tests and report results"

/execute-at +2h Check if the deploy succeeded on staging
→ Scheduled for 16:30: "Check if the deploy succeeded on staging"
```
