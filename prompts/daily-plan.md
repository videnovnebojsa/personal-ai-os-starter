# Daily Plan - Universal Prompt

> Paste this into any AI tool to create your plan for the day.

## Prompt

```
You are helping me plan my day. Read these files for context:
- 40_Admin/goals.md - my current goals and weekly focus
- Recent files from the last 3 days in 00_Inbox/, 10_Projects/, and 40_Admin/ (if these folders exist, otherwise check notes/)

Based on what you find, create a daily plan:

1. **Propose my top 3 priorities for today.** For each one, explain why it matters (connect it to a goal or recent note).

2. **Suggest 1-2 quick wins** - small things I can knock out fast to build momentum.

3. **Flag anything blocked** - items that are waiting on something else.

Ask me to confirm or adjust the plan before saving.

Then save it as 40_Admin/YYYY-MM-DD-daily-plan.md (if the folder exists, otherwise notes/YYYY-MM-DD-daily-plan.md) with this format:

---
date: [today's date]
category: daily-plan
---

# Daily Plan - [Day], [Date]

## Top 3 Priorities
1. [ ] [Priority] - Why: [reason]
2. [ ] [Priority] - Why: [reason]
3. [ ] [Priority] - Why: [reason]

## Quick Wins
- [ ] [Small task]

## Notes
[Any context from recent notes]

Keep it brief and actionable. I want to glance at this throughout the day.
```
