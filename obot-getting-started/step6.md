# Connect Claude to Obot

Claude Desktop (and Claude.ai) supports remote MCP servers. In this step you will point Claude at your Obot MCP gateway so it can reach the GitHub MCP server you just added.

## Step 1: Get Your Obot Gateway URL and API Key

1. In Obot, navigate to **MCP → Gateway** (or **Access**)
2. Click on Conect to Server and take note of the connection string


## Step 2: Configure Claude Desktop

Open the Claude Desktop configuration file:

- **macOS**: `~/Library/Application Support/Claude/claude_desktop_config.json`
- **Windows**: `%APPDATA%\Claude\claude_desktop_config.json`

Add the Obot gateway as an MCP server:

```json
{
"mcpServers": {
    "github-obot": {
      "command": "npx",
      "args": [
        "mcp-remote",
        "<string from the connect to dialog>"
      ]
    }
  },
}
```



## Step 3: Restart Claude Desktop

Fully quit and relaunch Claude Desktop. 
When it launches it should prompt for you to authenticate to the obot gateway.
