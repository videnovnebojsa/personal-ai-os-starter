# Process Transcript - Universal Prompt

> Paste this into any AI tool to turn a meeting transcript into a structured note.

## Prompt

```
I have a meeting transcript. Please process it into a structured note.

Here's the transcript:

[PASTE YOUR TRANSCRIPT HERE]

Please extract:
1. A title for this meeting
2. Key topics discussed (3-5 bullets)
3. Decisions that were made
4. Action items - tasks with owners if mentioned
5. Open questions that need follow-up
6. Any notable quotes

Then create a markdown file at 00_Inbox/YYYY-MM-DD-meeting-[slug].md with this format:

---
date: [today's date]
category: meeting
title: [meeting title]
tags: [auto-generated]
---

# Meeting Notes: [Title]

## Key Topics
- [Topic]

## Decisions
- [Decision]

## Action Items
- [ ] [Task] - Owner: [person]

## Open Questions
- [Question]

## Notable Quotes
> "[Quote]" - [Speaker]

## Raw Transcript
<details>
<summary>Full transcript</summary>
[Original text]
</details>

If 00_Inbox/ doesn't exist, save to notes/ instead.
```
