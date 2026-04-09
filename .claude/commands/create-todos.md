# Create Todos

Build your task list through an interactive interview.

## Instructions

1. **Read context.** Check if `40_Admin/goals.md` exists. If it does, read it to understand the user's projects and goals.

2. **Interview using AskUserQuestion.** Ask these questions one at a time:

   a. "What do you need to get done **later today**? List your tasks."
   
   b. "What about **tomorrow**? Any tasks planned?"
   
   c. "Anything for **next week**?"
   
   d. For each task mentioned, ask: "Which **project or goal** does '[task]' relate to?" - offer options from `40_Admin/goals.md` if available, plus "None / Personal".

3. **Create the tasks file.** Save to `40_Admin/Tasks.md` with this format:

```markdown
# Tasks

## Today - YYYY-MM-DD
- [ ] [Task 1] - Project: [project name]
- [ ] [Task 2] - Project: [project name]

## Tomorrow - YYYY-MM-DD
- [ ] [Task 1] - Project: [project name]

## Next Week
- [ ] [Task 1] - Project: [project name]

## Completed
- (Check items off as you go!)
```

4. **Confirm.** Tell the user: "Your tasks are saved to 40_Admin/Tasks.md. You have [X] tasks for today. Top priority: [first task]."
