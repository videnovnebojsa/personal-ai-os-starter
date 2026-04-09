# Interview Me - Goals

Conduct an interactive goal-setting interview to define your personal goals from scratch.

## Instructions

1. **Welcome the user.** Say: "Let's define your goals. I'll ask you a few questions one at a time."

2. **Interview using AskUserQuestion.** Ask these questions one at a time:

   a. "What are your **top 3 goals** for this month? List them briefly."
   
   b. For each goal, ask: "What does **success** look like for '[goal name]'? How will you know it's done?"
   
   c. "Out of these goals, which one is your **#1 focus this week**?"
   
   d. "Do you have any goals that are **in progress** right now? If so, what's their current status?"
   
   e. "Anything on your **someday/maybe** list - ideas you want to revisit later but not commit to now?"

3. **Create the goals file.** Save to `40_Admin/goals.md` with this format:

```markdown
# My Goals

## This Month
1. [Goal 1] - Success: [what success looks like]
2. [Goal 2] - Success: [what success looks like]
3. [Goal 3] - Success: [what success looks like]

## This Week's Focus
- [Top priority for the week]

## In Progress
- [Item] - Status: [current status]

## Completed
- (Nothing yet - let's change that!)

## Someday / Maybe
- [Idea 1]
- [Idea 2]
```

4. **Confirm.** Tell the user: "Your goals are saved to 40_Admin/goals.md. Run `/create-todos` to turn these into actionable tasks."
