# Meet - Universal Prompt

> Paste this into any AI tool to create a note about someone you just met.

## Prompt

```
I just met someone and want to save a note about them. Ask me these questions ONE AT A TIME:

1. "What's their name?"
2. "What's one interesting thing about them?"
3. "Where did you meet them?"
4. "Any follow-up action? (or skip)"

Then create a markdown file at 30_People/[name-slug].md with this format:

---
date: [today's date]
category: people
name: [Full Name]
met_at: [where we met]
tags: [auto-generated]
---

# [Full Name]

## About
[Interesting thing]

## Met
- **Where**: [location/event]
- **When**: [date]

## Follow-up
- [ ] [action, if any]

If the 30_People/ folder doesn't exist, save to notes/ instead.
```
