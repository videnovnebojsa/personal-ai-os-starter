# Remind Me At

Set a one-shot reminder that sends a reminder message at a specific time.

## Input
$ARGUMENTS

## Time Parsing

Parse the first part of the input as the time, and the rest as the reminder message.

Supported formats:
- **Relative**: `+20m`, `+1h`, `+2h30m` - offset from now
- **Absolute 12h**: `3:30pm`, `9am`, `11:45am` - today (or tomorrow if time has passed)
- **Absolute 24h**: `17:00`, `14:30`, `09:00` - today (or tomorrow if time has passed)

## Instructions

1. **Get the current time.** Run: `date '+%M %H %d %m %Y %A'` to get minute, hour, day, month, year, weekday.

2. **Parse the input.** Split into time and message:
   - `+20m Check the deploy` → time: +20m, message: "Check the deploy"
   - `3:30pm Call Sarah` → time: 3:30pm, message: "Call Sarah"
   - `17:00 Stand up` → time: 17:00, message: "Stand up"

3. **Calculate target time.**
   - For relative (`+Nm`, `+Nh`): add offset to current time
   - For absolute: use the given time, today. If the time has already passed today, schedule for tomorrow
   - Compute the target minute, hour, day-of-month, and month

4. **Create the cron job.** Call CronCreate with:
   - `cron`: `"[minute] [hour] [day] [month] *"` (all fields pinned)
   - `prompt`: `"Tell the user: REMINDER - [message]. Ask if they need help with this."`
   - `recurring`: `false`

5. **Confirm.** Tell the user:
   ```
   Reminder set for [HH:MM] - "[message]"
   Job ID: [id] (cancel with CronDelete)
   Claude will send the reminder when it fires.
   ```

## Examples
```
/remind-me-at +20m Check the deploy
→ Reminder set for 14:50 - "Check the deploy"

/remind-me-at 3:30pm Call Sarah
→ Reminder set for 15:30 - "Call Sarah"

/remind-me-at +1h Stand up and stretch
→ Reminder set for 15:30 - "Stand up and stretch"
```
