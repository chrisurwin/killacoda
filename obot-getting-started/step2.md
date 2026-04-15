# Access the Obot UI

## Retrieve Your Bootstrap Token

If you did not specify an `OBOT_BOOTSTRAP_TOKEN`, Obot auto-generated one at startup. Run this command to retrieve it from the logs:

```bash
docker logs obot 2>&1 | grep -i "bootstrap"
```{{execute}}

Copy the token value — you will need it to log in.

## Open the Obot UI

Click the link below to open the Obot UI in your browser:

**[Open Obot]({{TRAFFIC_HOST1_8080}}/admin)**

Log in using your bootstrap token. From here you can configure model providers, create agents, manage MCP servers, and start chatting.
