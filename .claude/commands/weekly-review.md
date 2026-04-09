# Weekly Review

Reflect on your week, celebrate wins, spot patterns, and set next week's focus.

## Instructions

1. **Gather the week's data.** Read:
   - All files from the past 7 days (by date in filename) in `00_Inbox/`, `10_Projects/`, `20_Areas/`, `30_People/`, `40_Admin/` (if PARA folders exist), otherwise check `notes/`
   - `40_Admin/goals.md` - to check progress
   - Previous weekly review if it exists (for continuity)

2. **Summarize the week.** Present to the user:
   - **Notes created this week**: List with brief descriptions
   - **Themes**: What topics/projects dominated?
   - **Action items found**: Completed vs. still open from notes
   - **Goal progress**: For each monthly goal, what moved forward?

3. **Guided reflection.** Ask the user (one at a time, conversationally):
   - "What was your biggest win this week?"
   - "What was your main challenge?"
   - "What would you do differently?"
   - "What are your top 3 priorities for next week?"

4. **Save the review.** Create `40_Admin/YYYY-MM-DD-weekly-review.md` if the folder exists, otherwise `notes/YYYY-MM-DD-weekly-review.md`:

```markdown
---
date: YYYY-MM-DD
category: weekly-review
week: YYYY-[week number]
---

# Weekly Review - Week of [start date]

## Week Summary
- Notes created: [count]
- Main themes: [theme1, theme2]

## Wins
- [Win 1]
- [Win 2]

## Challenges
- [Challenge 1]

## Goal Progress
| Goal | Status | Notes |
|------|--------|-------|
| [Goal 1] | [On track / Behind / Done] | [Brief note] |
| [Goal 2] | [On track / Behind / Done] | [Brief note] |

## Open Loops
- [ ] [Unfinished item 1]
- [ ] [Unfinished item 2]

## Next Week's Focus
1. [Priority 1]
2. [Priority 2]
3. [Priority 3]

## Reflections
[User's answers to reflection questions]
```

5. **Update `40_Admin/goals.md`.** If the user mentioned completing goals or changing priorities, update it accordingly.

6. **Confirm.** "Weekly review saved. Your top priority for next week: [#1]. Have a great weekend!"

## When to Use
- Friday afternoon or Sunday evening
- Whenever you need to step back and see the big picture
