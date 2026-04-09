#!/bin/bash
# Claude Code notification helper - bell + console message
# Triggers: Stop (Claude waiting for input), Notification (scheduled tasks)

input=$(cat)

# Parse JSON input
if command -v jq &> /dev/null; then
    message=$(echo "$input" | jq -r '.message // empty')
    event=$(echo "$input" | jq -r '.hook_event_name // "Unknown"')
else
    message=$(echo "$input" | grep -o '"message":"[^"]*"' | sed 's/"message":"\(.*\)"/\1/')
    event=$(echo "$input" | grep -o '"hook_event_name":"[^"]*"' | sed 's/"hook_event_name":"\(.*\)"/\1/')
    message=${message:-}
    event=${event:-"Unknown"}
fi

# Build notification text based on event
case "$event" in
    "Stop")
        title="Claude Code"
        body="Ready for your input"
        ;;
    "Notification")
        title="Claude Code Reminder"
        body="${message:-"Notification from Claude"}"
        ;;
    *)
        title="Claude Code"
        body="${event}: ${message:-"Needs attention"}"
        ;;
esac

# 1. Terminal bell
printf '\a'

# 2. Console message fallback
printf '%s: %s\n' "$title" "$body" >&2
