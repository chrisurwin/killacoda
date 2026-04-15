#!/bin/bash
echo "Obot is starting, please wait..."
until curl -sf http://localhost:8080/api/version > /dev/null 2>&1; do
  sleep 2
done
echo "Obot is ready!"
