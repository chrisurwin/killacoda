# View the Audit Log

Every tool call routed through the Obot gateway is recorded. The audit log lets you see exactly what was called, by whom, and when.

## Open the Audit Log

1. In the Obot admin UI, navigate to **Audit** (or **Monitoring → Audit Log**)
2. You should see entries for the `list_repositories` (and any other) calls made in the previous step

## Reading an Entry

Each log entry shows:

| Field | Description |
|-------|-------------|
| **Timestamp** | When the tool call was made |
| **User** | The authenticated user (or API key) that made the call |
| **MCP Server** | Which server handled the call (e.g. `github`) |
| **Tool** | The specific tool invoked (e.g. `list_repositories`) |
| **Status** | Whether the call succeeded or failed |

## Why This Matters

The audit log gives your organisation visibility into all MCP activity — useful for security reviews, usage tracking, and debugging. Because every call passes through the Obot gateway, there is a single, consistent place to monitor what AI clients are doing with your MCP servers.

Congratulations — you have added a GitHub MCP server, connected an AI client to it via the Obot gateway, made a real tool call, and verified it in the audit log.
