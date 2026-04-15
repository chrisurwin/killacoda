#!/bin/bash
docker pull ghcr.io/obot-platform/obot:latest
docker run -d --name obot -p 8080:8080 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e OBOT_SERVER_ENABLE_AUTHENTICATION=true \
  ghcr.io/obot-platform/obot:latest
