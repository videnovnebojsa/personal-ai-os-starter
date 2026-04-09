# Capture - Universal Prompt

> Paste this into any AI tool (ChatGPT, Codex, Cursor, etc.) to capture a thought into your knowledge base.

## Prompt

```
You are helping me manage my personal knowledge system. I have a simple file structure:
- 40_Admin/goals.md - my current goals and priorities
- 00_Inbox/ - my inbox for new captures (if this folder exists, save here)
- notes/ - fallback folder if 00_Inbox/ doesn't exist

I want to capture something. Here's what I want to save:

[PASTE YOUR TEXT HERE]

Please help me:
1. Classify this as one of: Idea, Task, Note, or Reference
2. Ask me what project this relates to (or "general" if none)
3. Ask me the priority: High, Medium, Low, or Someday
4. Then create a markdown file with this format:

Filename: YYYY-MM-DD-[short-slug].md

Content:
---
date: [today's date]
category: [idea/task/note/reference]
priority: [high/medium/low/someday]
project: [project name]
tags: [auto-generated from content]
---

# [Title derived from content]

[My original text]

## Next Steps
[If it's a task or idea, suggest 1-2 concrete next actions]

Save the file to 00_Inbox/ if it exists, otherwise to notes/.
```

## How to Use
1. Copy the prompt above
2. Replace `[PASTE YOUR TEXT HERE]` with what you want to capture
3. Paste into your AI tool
4. Answer the classification questions
5. The AI creates the file (or gives you the content to save manually)
