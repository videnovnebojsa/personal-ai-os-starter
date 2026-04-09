# My Context - OpenAI Codex CLI

> This file is the Codex CLI equivalent of CLAUDE.md. Codex reads it automatically.
> Fill in the same details - the structure is identical.

## Who I Am
- **Name**: [Your name]
- **Role**: [What you do]
- **Expertise**: [Your key skills]

## Current Goals
1. [Goal 1]
2. [Goal 2]
3. [Goal 3]

## Active Projects
- **[Project Name]**: [One-liner]
- **[Project Name]**: [One-liner]

## How I Work
- I prefer [concise / detailed] responses
- I work best in the [morning / afternoon / evening]
- My tools: [list your tools]

## Rules
### Always
- Read 40_Admin/goals.md before suggesting priorities
- Ask before creating new files
- Keep responses actionable and specific

### Never
- Make assumptions about my schedule
- Add tasks without asking

## Workflows

When I say "scaffold", follow this workflow:
1. Create these folders: 00_Inbox/, 10_Projects/, 20_Areas/, 30_People/, 40_Admin/
2. Add a .gitkeep file inside each folder
3. Confirm the structure is ready and explain what each folder is for
4. Suggest "interview me goals" as the next step

When I say "capture [text]", follow this workflow:
1. If no text was provided, ask: "What would you like to capture?"
2. Classify the content as: Idea, Task, Note, or Reference
3. Ask me for:
   - Priority: High / Medium / Low / Someday
   - Project: list projects from 40_Admin/goals.md if available, plus None / General
4. Create a file in 00_Inbox/ if it exists, otherwise notes/
5. Use filename: YYYY-MM-DD-[short-slug].md
6. Use frontmatter with: date, category, priority, project, tags
7. Add the original captured text as the body
8. If the category is task or idea, include a short "Next Steps" section with 1-2 concrete next actions
9. Confirm the saved path, category, priority, and project

When I say "braindump", follow this workflow:
1. Ask "What's on your mind?"
2. Let me write freely
3. Accept any format without forcing structure
4. Read 40_Admin/goals.md before analyzing connections
5. Extract:
   - Main themes
   - Action items
   - Open questions
   - Decisions to make
   - Connections to existing goals or projects
6. Create a structured note in 00_Inbox/ if it exists, otherwise notes/
7. Use filename: YYYY-MM-DD-braindump-[slug].md
8. Include these sections:
   - Raw Thoughts
   - Key Themes
   - Action Items
   - Open Questions
   - Connections
9. Confirm what was saved and offer to turn action items into tasks

When I say "interview me goals", follow this workflow:
1. Start by saying: "Let's define your goals. I'll ask you a few questions one at a time."
2. Ask me one at a time: "What are your top 3 goals this month?"
3. For each goal, ask: "What does success look like? How will you know it's done?"
4. Ask: "Which is your #1 focus this week?"
5. Ask: "Anything in progress right now? What's the current status?"
6. Ask: "Any someday/maybe ideas?"
7. Save to 40_Admin/goals.md
8. Format it with sections for:
   - This Month
   - This Week's Focus
   - In Progress
   - Completed
   - Someday / Maybe
9. Confirm what was saved and suggest "create todos" next

When I say "create todos", follow this workflow:
1. Read 40_Admin/goals.md if it exists to understand projects and goals
2. Ask: "What do you need to do later today?"
3. Ask: "What about tomorrow?"
4. Ask: "Anything for next week?"
5. For each task, ask which project or goal it relates to
6. Save to 40_Admin/Tasks.md
7. Format it with sections for:
   - Today
   - Tomorrow
   - Next Week
   - Completed
8. Confirm the saved file, task count for today, and the top priority

When I say "meet", follow this workflow:
1. Ask: "What's their name?"
2. Ask: "What's one interesting thing about them?"
3. Ask: "Where did you meet them?"
4. Ask: "Any follow-up action?"
5. Save to 30_People/[name-slug].md if 30_People exists, otherwise notes/YYYY-MM-DD-met-[name-slug].md
6. Use frontmatter with: date, category, name, met_at, tags
7. Include sections for:
   - About
   - Met
   - Follow-up
8. Confirm what was saved

When I say "daily plan", follow this workflow:
1. Read 40_Admin/goals.md
2. Read recent files from the last 3 days in 00_Inbox/, 10_Projects/, and 40_Admin/, or notes/ if PARA folders do not exist
3. Read AGENTS.md for work preferences
4. Analyze:
   - What goals need attention this week
   - What unfinished items or new ideas surfaced recently
   - What preferences or timing constraints are described in AGENTS.md
5. Propose:
   - Top 3 priorities for today, with brief reasoning
   - Quick wins
   - Blocked items
6. Ask me to confirm or adjust the plan
7. Save to 40_Admin/YYYY-MM-DD-daily-plan.md if that folder exists, otherwise notes/YYYY-MM-DD-daily-plan.md
8. Include sections for:
   - Top 3 Priorities
   - Quick Wins
   - Notes
9. Confirm the saved plan and call out the top priority

When I say "weekly review", follow this workflow:
1. Read all files from the past 7 days across the PARA folders if they exist, otherwise notes/
2. Read 40_Admin/goals.md
3. Read the previous weekly review if it exists
4. Summarize:
   - Notes created this week
   - Main themes
   - Completed vs still-open action items
   - Progress against monthly goals
5. Ask me, one at a time:
   - "What was your biggest win this week?"
   - "What was your main challenge?"
   - "What would you do differently?"
   - "What are your top 3 priorities for next week?"
6. Save to 40_Admin/YYYY-MM-DD-weekly-review.md if that folder exists, otherwise notes/YYYY-MM-DD-weekly-review.md
7. Include sections for:
   - Week Summary
   - Wins
   - Challenges
   - Goal Progress
   - Open Loops
   - Next Week's Focus
   - Reflections
8. If I mention completed goals or changed priorities, update 40_Admin/goals.md too
9. Confirm what was saved and call out next week's top priority

When I say "goals", follow this workflow:
1. Read 40_Admin/goals.md
2. If it does not exist yet, tell me to run "interview me goals" first
3. Show the current state:
   - This Month goals
   - This Week's focus
   - In Progress items
   - Completed count
4. Ask what I want to update:
   - Add a new goal
   - Mark something complete
   - Reprioritize / restructure
   - Just review with no changes
5. Apply the requested update
6. Save the updated goals file
7. Confirm exactly what changed

When I say "screenshot to note", follow this workflow:
1. Ask for the image file path if I did not provide one
2. Read the image and extract all visible text
3. Create a structured note in 00_Inbox/ if it exists, otherwise notes/
4. Use filename: YYYY-MM-DD-screenshot-[short-slug].md
5. Use frontmatter with: date, category, source, tags
6. Include sections for:
   - Extracted Text
   - Summary
7. Confirm what was saved and include a short summary

When I say "process transcript", follow this workflow:
1. Ask me to paste the transcript or provide a file path if I did not already provide one
2. If I provided a path, read the file; if I pasted text, use it directly
3. Extract:
   - Meeting title
   - Key topics
   - Decisions made
   - Action items, with owners if mentioned
   - Open questions
   - Notable quotes
4. Create a meeting note in 00_Inbox/ if it exists, otherwise notes/
5. Use filename: YYYY-MM-DD-meeting-[short-slug].md
6. Use frontmatter with: date, category, title, tags
7. Include sections for:
   - Key Topics
   - Decisions
   - Action Items
   - Open Questions
   - Notable Quotes
   - Raw Transcript
8. Confirm what was saved and report the action item and decision counts

When I say "remind me at [time] [message]", follow this workflow:
1. Parse the first part as the time and the rest as the reminder message
2. Support these time formats:
   - Relative: +20m, +1h, +2h30m
   - Absolute 12h: 3:30pm, 9am, 11:45am
   - Absolute 24h: 17:00, 14:30, 09:00
3. Get the current time before calculating the target time
4. If a scheduling capability is available in this Codex environment, create a one-shot reminder for the computed time
5. The reminder should notify me with the message and then ask if I need help with it
6. If scheduling is not available in the current Codex environment, say so clearly instead of pretending it succeeded
7. Confirm the target time and reminder text

When I say "execute at [time] [action]", follow this workflow:
1. Parse the first part as the time and the rest as the action to execute
2. Support these time formats:
   - Relative: +20m, +1h, +2h30m
   - Absolute 12h: 3:30pm, 9am, 11:45am
   - Absolute 24h: 17:00, 14:30, 09:00
3. Get the current time before calculating the target time
4. If the action starts with "/", treat it as a named workflow request
5. If a scheduling capability is available in this Codex environment, create a one-shot scheduled task for the computed time
6. The scheduled task should notify me when it fires and then execute the requested action
7. If scheduling is not available in the current Codex environment, say so clearly instead of pretending it succeeded
8. Confirm the target time and scheduled action
