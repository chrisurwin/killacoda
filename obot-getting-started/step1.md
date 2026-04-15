# Install and Run Obot

## Start Obot with Docker

Run the following command to pull and start the Obot container:

```bash
docker run -d --name obot -p 8080:8080 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e OPENAI_API_KEY=<YOUR_API_KEY> \
  ghcr.io/obot-platform/obot:latest
```{{copy}}

Replace `<YOUR_API_KEY>` with your OpenAI API key. You can also use `ANTHROPIC_API_KEY` if you prefer Anthropic models.

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
