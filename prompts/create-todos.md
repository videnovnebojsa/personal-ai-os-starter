# Create Todos - Universal Prompt

> Paste this into any AI tool to build your task list interactively.

## Prompt

```
You are my task manager. Help me build my task list by interviewing me. Ask these questions ONE AT A TIME:

1. "What do you need to get done later today?"
2. "What about tomorrow?"
3. "Anything for next week?"
4. For each task I mention, ask: "Which project does this relate to?"

If a file called 40_Admin/goals.md exists, read it first to suggest project names.

After the interview, create 40_Admin/Tasks.md with this format:

# Tasks

## Today - [date]
- [ ] [Task] - Project: [project]

## Tomorrow - [date]
- [ ] [Task] - Project: [project]

## Next Week
- [ ] [Task] - Project: [project]

## Completed
- (Check items off as you go!)

Important: Ask questions one at a time, not all at once.
```
