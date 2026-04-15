#!/bin/bash
clear
docker image inspect ghcr.io/obot-platform/obot:latest > /dev/null 2>&1 || echo "Pulling Obot image, please wait..."
while ! docker image inspect ghcr.io/obot-platform/obot:latest > /dev/null 2>&1; do sleep 3; done
docker ps -a --filter name=obot -q 2>/dev/null | grep -q . || echo "Starting Obot container..."
while ! docker ps --filter name=obot --filter status=running -q 2>/dev/null | grep -q .; do sleep 1; done
echo "Waiting for Obot server to be ready..."
while ! curl -sf http://localhost:8080/api/version > /dev/null 2>&1; do sleep 2; done
echo "Obot is ready!"
