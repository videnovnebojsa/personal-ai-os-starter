# Process Transcript

Turn a meeting transcript into a structured note with action items.

## Input
$ARGUMENTS

## Instructions

1. **Get the transcript.** Check `$ARGUMENTS`:
   - If it contains a **file path** (e.g., ends in `.txt`, `.md`, or contains `/`), read that file.
   - If it contains **pasted text**, use it directly.
   - If empty, use AskUserQuestion: "Please **paste your transcript** or provide the **file path** to a transcript file."

2. **Analyze the transcript.** Extract:
   - **Meeting title** - what was this about?
   - **Key topics** discussed (3-5 bullet points)
   - **Decisions made** - anything that was agreed upon
   - **Action items** - tasks assigned, with who's responsible if mentioned
   - **Open questions** - unresolved topics that need follow-up
   - **Notable quotes** - any important or insightful statements

3. **Create the meeting note.** Determine the save location:
   - If `00_Inbox/` exists → save there
   - Otherwise → save to `notes/`
   
   Filename: `YYYY-MM-DD-meeting-[short-slug].md`

```markdown
---
date: YYYY-MM-DD
category: meeting
title: [Meeting title]
tags: [auto-generated from topics]
---

# Meeting Notes: [Title]

## Key Topics
- [Topic 1]
- [Topic 2]
- [Topic 3]

## Decisions
- [Decision 1]
- [Decision 2]

## Action Items
- [ ] [Task 1] - Owner: [person, if known]
- [ ] [Task 2] - Owner: [person, if known]

## Open Questions
- [Question that needs follow-up]

## Notable Quotes
> "[Quote]" - [Speaker]

## Raw Transcript
<details>
<summary>Click to expand full transcript</summary>

[Original transcript text]

</details>
```

4. **Confirm.** Tell the user: "Meeting notes saved to [path]. Found [X] action items and [Y] decisions."
