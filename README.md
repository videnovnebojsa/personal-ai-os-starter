# Personal AI OS - Starter Kit

**Your AI becomes a co-pilot when you give it context about you.**

This is a simple, local-first system that turns any AI coding tool into your personal productivity assistant. No servers, no SaaS, no database - just markdown files and your AI tool of choice.

Set up in 5 minutes. Works with **Claude Code**, **OpenAI Codex CLI**, **Cursor**, **Windsurf**, or any tool that reads context files.

> Built for the **GenAI Summit EU 2026** workshop: *"Build Your Personal AI OS"*

## What's Inside

```
personal-ai-os-starter/
├── CLAUDE.md                  ← Context file for Claude Code (auto-loaded)
├── AGENTS.md                  ← Context file for Codex CLI (auto-loaded)
├── CONTEXT.md                 ← Universal template (Cursor, Windsurf, etc.)
├── notes/                     ← Fallback notes folder
├── samples/
│   └── sample-transcript.txt  ← Sample meeting transcript for /process-transcript
├── .claude/
│   ├── commands/              ← Claude Code slash commands
│   │   ├── scaffold.md        ← /scaffold - create PARA folder structure
│   │   ├── interview-me-goals.md ← /interview-me-goals - goal-setting interview
│   │   ├── create-todos.md    ← /create-todos - build task list interactively
│   │   ├── capture.md         ← /capture - classify & save a thought
│   │   ├── meet.md            ← /meet - create a people note
│   │   ├── screenshot-to-note.md ← /screenshot-to-note - image → text note
│   │   ├── process-transcript.md ← /process-transcript - transcript → meeting note
│   │   ├── braindump.md       ← /braindump - free-write → structured note
│   │   ├── goals.md           ← /goals - review & update goals
│   │   ├── daily-plan.md      ← /daily-plan - plan your day
│   │   ├── weekly-review.md   ← /weekly-review - end-of-week reflection
│   │   ├── remind-me-at.md    ← /remind-me-at - schedule a reminder
│   │   └── execute-at.md      ← /execute-at - schedule a command
│   └── claude-code-notifier.sh ← Optional notification helper
└── prompts/                   ← Universal prompts (any AI tool)
    ├── scaffold.md
    ├── interview-me-goals.md
    ├── create-todos.md
    ├── capture.md
    ├── meet.md
    ├── screenshot-to-note.md
    ├── process-transcript.md
    ├── braindump.md
    ├── goals.md
    ├── daily-plan.md
    └── weekly-review.md
```

After running `/scaffold`, your working folder will also have:
```
00_Inbox/        ← Capture everything here first
10_Projects/     ← Active projects with clear goals
20_Areas/        ← Ongoing areas of responsibility
30_People/       ← Notes about people you meet
40_Admin/        ← Goals, plans, reviews, and tasks
```

## Quick Start

### Get the starter kit

**Option 1 - Git clone:**
```bash
git clone https://github.com/videnovnebojsa/personal-ai-os-starter.git my-ai-os
cd my-ai-os
```

**Option 2 - Download ZIP** (no git needed):
Download from the [GitHub releases page](https://github.com/videnovnebojsa/personal-ai-os-starter/releases) or click "Code → Download ZIP" on the repo page. Unzip and open the folder.

### Option A: Claude Code (Recommended)

```bash
# 1. Install Claude Code (if you don't have it)
npm install -g @anthropic-ai/claude-code

# 2. Launch Claude Code in the folder
claude

# 3. Set up your structure
# Type: /scaffold

# 4. Define your goals
# Type: /interview-me-goals

# 5. Capture your first idea
# Type: /capture I have an idea for a new side project
```

### Option B: OpenAI Codex CLI

```bash
# 1. Install Codex CLI
npm install -g @openai/codex

# 2. Fill in your context
# Open AGENTS.md and replace the [brackets] with your info

# 3. Launch Codex
codex

# 4. Set up structure - say: "scaffold"
# 5. Define goals - say: "interview me goals"
# 6. Capture - say: "capture I have an idea for a new side project"
```

### Option C: Any Other AI Tool (Cursor, Windsurf, ChatGPT)

```bash
# 1. Set up context for your tool:
#    Cursor  → copy CONTEXT.md content to .cursorrules
#    Windsurf → copy CONTEXT.md content to .windsurfrules
#    ChatGPT → paste CONTEXT.md into Custom Instructions

# 2. Use prompts from the prompts/ folder
# Open prompts/scaffold.md, copy the prompt, paste into your AI tool
# Then try prompts/capture.md
```

## Commands Reference

| Command | What it does | Claude Code | Codex CLI | Other tools |
|---------|-------------|-------------|-----------|-------------|
| **Scaffold** | Create PARA folder structure | `/scaffold` | Say "scaffold" | Paste `prompts/scaffold.md` |
| **Interview Goals** | Goal-setting interview | `/interview-me-goals` | Say "interview me goals" | Paste `prompts/interview-me-goals.md` |
| **Create Todos** | Build task list interactively | `/create-todos` | Say "create todos" | Paste `prompts/create-todos.md` |
| **Capture** | Classify & save a thought | `/capture [text]` | Say "capture [text]" | Paste `prompts/capture.md` |
| **Meet** | Create a people note | `/meet` | Say "meet" | Paste `prompts/meet.md` |
| **Screenshot** | Image → text note | `/screenshot-to-note` | Say "screenshot to note" | Paste `prompts/screenshot-to-note.md` |
| **Transcript** | Meeting transcript → note | `/process-transcript` | Say "process transcript" | Paste `prompts/process-transcript.md` |
| **Brain Dump** | Free-write → structured note | `/braindump` | Say "braindump" | Paste `prompts/braindump.md` |
| **Goals** | Review & update goals | `/goals` | Say "goals" | Paste `prompts/goals.md` |
| **Daily Plan** | Plan your day | `/daily-plan` | Say "daily plan" | Paste `prompts/daily-plan.md` |
| **Weekly Review** | End-of-week reflection | `/weekly-review` | Say "weekly review" | Paste `prompts/weekly-review.md` |
| **Remind Me At** | One-shot reminder | `/remind-me-at +20m Call Sarah` | - | - |
| **Execute At** | Schedule a command to run later | `/execute-at 9am /daily-plan` | - | - |

## Bonus Scheduling (Claude Code)

Two bonus commands show how Claude Code can schedule reminder-style tasks.

### How it works

1. **`/remind-me-at`** - Set a one-shot reminder. At the scheduled time, Claude sends the reminder and asks if you need help.

   ```
   /remind-me-at +20m Check the deploy
   /remind-me-at 3:30pm Call Sarah
   /remind-me-at +1h Stand up and stretch
   ```

2. **`/execute-at`** - Schedule any prompt or slash command to run automatically. At the scheduled time, Claude executes the action.

   ```
   /execute-at 9:00am /daily-plan
   /execute-at +30m Run tests and report results
   /execute-at +2h Check if staging deploy succeeded
   ```

### Optional hook helper

If you want a local hook that rings the terminal bell and prints a short message, you can use the included helper script:

1. **Make the script executable:**
   ```bash
   chmod +x .claude/claude-code-notifier.sh
   ```

2. **Add the notification hook** to your Claude settings:
   ```json
   {
     "hooks": {
       "Notification": [
         {
           "hooks": [
             {
               "type": "command",
               "command": ".claude/claude-code-notifier.sh"
             }
           ]
         }
       ]
     }
   }
   ```

This helper is optional and not required for `/remind-me-at` or `/execute-at` to work.

### Key difference

- `/remind-me-at` - sends a reminder and asks what to do (passive)
- `/execute-at` - runs the action autonomously at the scheduled time (active)

## How It Works - The 4 Primitives

1. **Context File** (`CLAUDE.md` / `AGENTS.md`) - Your AI reads this automatically every session. It knows who you are, what you're working on, and how you prefer to work. Fill it once, benefit forever.

2. **Goals Tracker** (`40_Admin/goals.md`) - Created by the goals interview workflow and used as the canonical source for planning and review.

3. **PARA Folders** (`00_Inbox/`, `10_Projects/`, `20_Areas/`, `30_People/`, `40_Admin/`) - Created by `/scaffold`. Notes are auto-routed: captures → Inbox, people → People, goals/plans → Admin. All commands fall back to `notes/` if PARA folders don't exist.

4. **Reusable Commands** (`.claude/commands/` or `prompts/`) - Saved workflows you invoke with one command. Instead of re-explaining what you want every time, you say `/capture` and the AI knows exactly what to do.

## Customize It

- **Add your own commands**: Create a new `.md` file in `.claude/commands/` (Claude Code) or add a workflow to `AGENTS.md` (Codex)
- **Change the note format**: Edit the templates in the command files
- **Add more context**: Put project briefs, meeting notes, or reference docs in `notes/`
- **Track habits**: Add a habits section to `40_Admin/goals.md`
- **Add tags**: The capture command auto-generates tags, but you can customize the tag taxonomy

## What This Grows Into

This starter kit gives you the foundation. Here's what a mature system looks like:

- **Auto-routing**: Captures automatically filed to the right folder by category
- **Search**: Full-text search across all your notes with AI-powered relevance
- **Scheduling**: Automated daily digests and planning prompts
- **Task sync**: Vault connected to your task manager (Todoist, Things, etc.)
- **MCP tools**: Your AI reads and writes your knowledge base as structured data

For an example of the full system, see [vault-service](https://github.com/videnovnebojsa/vault-service) - a production local AI OS built on these same primitives.

## Cross-Tool Comparison

| Concept | Claude Code | Codex CLI | Cursor / Windsurf |
|---------|-------------|-----------|-------------------|
| Context file | `CLAUDE.md` (auto-loaded) | `AGENTS.md` (auto-loaded) | `.cursorrules` / `.windsurfrules` |
| Commands | `.claude/commands/*.md` → `/name` | Describe in `AGENTS.md` | Paste from `prompts/` |
| Interactive UI | `AskUserQuestion` (native) | Text-based in AGENTS.md | Text-based |
| Memory | Auto-memory system | - | - |
| Hooks | `.claude/settings.json` | - | - |

## Requirements

- A laptop with terminal access
- **One of**: Claude Pro ($20/mo), OpenAI API key, or any AI tool subscription
- Git (optional, but recommended for version history)

## License

MIT - use it, share it, teach with it.
