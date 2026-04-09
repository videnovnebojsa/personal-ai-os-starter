# Brain Dump

Capture unstructured thoughts and transform them into organized, actionable notes.

## Input
$ARGUMENTS

## Instructions

1. **Start the dump.** If no text was provided, say:
   "What's on your mind? Write freely - don't worry about structure. I'll help organize it after."

2. **Let the user write.** Accept any format: stream of consciousness, bullet points, voice-to-text, messy notes. No judgment, no filtering.

3. **Analyze the content.** After they're done, extract:
   - **Main themes** (2-4 key topics)
   - **Action items** (specific things to do)
   - **Open questions** (things that need answers)
   - **Decisions to make** (choices being considered)
   - **Connections** to existing goals or projects (read `40_Admin/goals.md`)

4. **Create the structured note.** Save to `00_Inbox/` if it exists, otherwise `notes/`:
   - **Filename**: `YYYY-MM-DD-braindump-[slug].md`
   - **Content**:

```markdown
---
date: YYYY-MM-DD
category: braindump
themes: [theme1, theme2, theme3]
tags: [auto-generated]
---

# Brain Dump: [Auto-generated descriptive title]

## Raw Thoughts
[Original content preserved exactly as written]

## Key Themes
1. **[Theme 1]**: [Brief description]
2. **[Theme 2]**: [Brief description]

## Action Items
- [ ] [Specific action 1]
- [ ] [Specific action 2]

## Open Questions
- [Question that needs answering]
- [Decision that needs making]

## Connections
- Related to goal: [goal from 40_Admin/goals.md if relevant]
- Related to project: [project if relevant]
```

5. **Confirm and suggest.** Show a brief summary:
   "Brain dump saved to [folder]/[filename]. Found [N] themes, [N] action items, and [N] open questions. Want to capture any of the action items as tasks?"
