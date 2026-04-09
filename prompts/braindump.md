# Brain Dump - Universal Prompt

> Paste this into any AI tool to turn unstructured thoughts into organized notes.

## Prompt

```
You are helping me process a brain dump. I'm going to write freely - stream of consciousness, messy, unstructured. Your job is to help me make sense of it.

My knowledge system:
- 40_Admin/goals.md - my current goals
- notes/ - my captured notes (date-prefixed markdown files)

Here's my brain dump:

[WRITE FREELY HERE - don't worry about structure]

After I'm done, please:
1. Identify the 2-4 main themes
2. Extract any action items (things I should do)
3. Pull out open questions (things I need to answer or decide)
4. Check if anything connects to my goals (read 40_Admin/goals.md)
5. Create a structured note with this format:

Filename: YYYY-MM-DD-braindump-[slug].md

Content:
---
date: [today's date]
category: braindump
themes: [theme1, theme2]
tags: [auto-generated]
---

# Brain Dump: [Descriptive title]

## Raw Thoughts
[My original text, preserved exactly]

## Key Themes
1. **[Theme]**: [Brief description]
2. **[Theme]**: [Brief description]

## Action Items
- [ ] [Specific action]
- [ ] [Specific action]

## Open Questions
- [Question]
- [Decision to make]

## Connections
- Related to goal: [if applicable]
- Related to project: [if applicable]

Save to notes/.
```
