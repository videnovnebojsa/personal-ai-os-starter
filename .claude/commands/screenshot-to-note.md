# Screenshot to Note

Extract text from a screenshot and save it as a note.

## Input
$ARGUMENTS

## Instructions

1. **Get the image path.** If `$ARGUMENTS` contains a file path, use it. Otherwise, use AskUserQuestion to ask: "What's the **path to your screenshot**? (e.g., ~/Desktop/screenshot.png)"

2. **Read the image.** Use the Read tool to view the image file. Claude Code can read images natively.

3. **Extract all visible text.** Identify and transcribe every piece of text visible in the screenshot - headings, body text, labels, captions, code, etc.

4. **Create a structured note.** Determine the save location:
   - If `00_Inbox/` exists → save there
   - Otherwise → save to `notes/`
   
   Filename: `YYYY-MM-DD-screenshot-[short-slug].md`

```markdown
---
date: YYYY-MM-DD
category: screenshot
source: [filename of original image]
tags: [auto-generated from content]
---

# [Auto-generated title from content]

## Extracted Text
[All text extracted from the screenshot, organized logically]

## Summary
[1-2 sentence summary of what the screenshot contains]
```

5. **Confirm.** Tell the user: "Extracted text from [image filename] and saved to [path]. Summary: [brief summary]."
