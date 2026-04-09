# Goals Review

Review and update your goals interactively.

## Instructions

1. **Read current goals.** Open and read `40_Admin/goals.md`.
2. **If it does not exist yet**, tell the user to run `/interview-me-goals` first.

3. **Show the current state.** Display goals organized by section:
   - This Month's goals with completion status
   - This Week's focus items
   - In Progress items with their status
   - Count of completed items

4. **Ask what to update.** Use AskUserQuestion:
   - **Add a new goal**
   - **Mark something complete**
   - **Reprioritize / restructure**
   - **Just reviewing, no changes**

5. **Apply changes.** Based on their choice:
   - **Add**: Ask for the goal text and which section. Add it to `40_Admin/goals.md`.
   - **Complete**: Show numbered list of incomplete items. Ask which to mark done. Move to Completed section with today's date.
   - **Reprioritize**: Show current goals, ask for new ordering or section moves. Update `40_Admin/goals.md`.
   - **Just reviewing**: Offer a brief reflection - "Based on your goals, here's what I'd suggest focusing on today: [top priority]"

6. **Save and confirm.** Write changes to `40_Admin/goals.md`. Show what changed.

## Tips
- Run this at the start of your week to set focus
- Run after completing something to celebrate and reprioritize
- Goals should be specific enough to know when they're done
