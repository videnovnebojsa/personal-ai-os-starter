# Capture

Quickly capture a thought, idea, task, or reference into your knowledge base.

## Input
$ARGUMENTS

## Instructions

1. **Read the input text.** If no text was provided, ask: "What would you like to capture?"

2. **Classify the content.** Use AskUserQuestion to ask:
   - **Category**: Idea / Task / Note / Reference
   - **Priority**: High / Medium / Low / Someday
   - **Project**: List projects from `40_Admin/goals.md`, plus "None / General"

3. **Create the note.** Determine the save location:
   - If `00_Inbox/` folder exists → save there
   - Otherwise → fall back to `notes/`
   - **Filename**: `YYYY-MM-DD-[short-slug].md` (use today's date)
   - **Content**:

```markdown
---
date: YYYY-MM-DD
category: [idea/task/note/reference]
priority: [high/medium/low/someday]
project: [project name or "general"]
tags: [auto-generated from content]
---

# [Auto-generated title from content]

[Original captured text]

## Next Steps
[If category is "task" or "idea", suggest 1-2 concrete next actions]
```

4. **Confirm.** Tell the user: "Captured to [folder]/[filename]. Category: [X], Priority: [Y], Project: [Z]."

## Examples
- `/capture I have an idea for automating our weekly reports` → Asks category/priority/project → Saves structured note
- `/capture Buy birthday gift for Mom` → Auto-suggests: Task, High priority → Saves with next steps
- `/capture Meeting notes: decided to switch to PostgreSQL` → Auto-suggests: Note, links to relevant project
