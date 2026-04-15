# Install and Run Obot

## Start Obot with Docker

Run the following command to pull and start the Obot container:

```bash
docker run -d --name obot -p 8080:8080 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e OPENAI_API_KEY=<YOUR_API_KEY> \
  -e OBOT_SERVER_ENABLE_AUTHENTICATION=true \
  -e OBOT_BOOTSTRAP_TOKEN=<YOUR_BOOTSTRAP_TOKEN> \
  ghcr.io/obot-platform/obot:latest
```{{copy}}

Replace `<YOUR_API_KEY>` with your OpenAI API key. You can also use `ANTHROPIC_API_KEY` if you prefer Anthropic models.

Replace `<YOUR_BOOTSTRAP_TOKEN>` with a secret token of your choice. This token is used for the initial admin login before an auth provider is configured. If omitted, a token will be auto-generated and printed to the container logs.

Or, click below to start Obot without an API key or bootstrap token (you can configure these later in the admin UI):

```bash
docker run -d --name obot -p 8080:8080 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e OBOT_SERVER_ENABLE_AUTHENTICATION=true \
  ghcr.io/obot-platform/obot:latest
```{{execute}}

## Verify Obot is Running

Check that the container started successfully:

```bash
docker ps --filter name=obot
```{{execute}}

You should see the `obot` container listed with status `Up`.

## Check the Logs

Watch the Obot startup logs to confirm the server is ready:

```bash
docker logs -f obot
```{{execute}}

Wait until you see a line indicating the server is listening (e.g., `Listening on :8080`). Press `Ctrl+C` to stop following the logs.

## Access the Obot UI

Once Obot is running, open the UI at:

**http://localhost:8080**

From here you can configure model providers, create agents, manage MCP servers, and start chatting.
