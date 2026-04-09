# Screenshot to Note - Universal Prompt

> Use this with any multimodal AI tool (ChatGPT, Claude, Gemini) to extract text from a screenshot.

## Prompt

```
I have a screenshot and I want to extract all the text from it and save it as a note.

[ATTACH YOUR SCREENSHOT HERE]

Please:
1. Extract ALL visible text from the image - headings, body text, labels, code, captions, everything
2. Organize the text logically (don't just dump it)
3. Create a markdown file at 00_Inbox/YYYY-MM-DD-screenshot-[slug].md with this format:

---
date: [today's date]
category: screenshot
source: [describe the screenshot]
tags: [auto-generated]
---

# [Title based on content]

## Extracted Text
[Organized text from the screenshot]

## Summary
[1-2 sentence summary]

If 00_Inbox/ doesn't exist, save to notes/ instead.
```

## Note
This prompt requires a multimodal AI tool that can process images.
