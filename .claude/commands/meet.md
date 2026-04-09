# Meet

Create a note about someone you just met.

## Instructions

1. **Interview using AskUserQuestion.** Ask these questions one at a time:

   a. "What's their **name**?"
   
   b. "What's **one interesting thing** about them?"
   
   c. "Where did you meet them? (e.g., conference, meetup, work)"
   
   d. "Any **follow-up action**? (e.g., send an email, connect on LinkedIn, share a resource) - or skip"

2. **Create the people note.** Save to `30_People/[name-slug].md`:

```markdown
---
date: YYYY-MM-DD
category: people
name: [Full Name]
met_at: [where you met]
tags: [auto-generated]
---

# [Full Name]

## About
[Interesting thing about them]

## Met
- **Where**: [location/event]
- **When**: [today's date]

## Follow-up
- [ ] [Follow-up action, if any]
```

3. **If `30_People/` doesn't exist**, fall back to `notes/YYYY-MM-DD-met-[name-slug].md`.

4. **Confirm.** Tell the user: "Saved note about [Name] to 30_People/[filename]."
