#!/bin/bash
cat > /tmp/obot-wait.sh << 'WAITSCRIPT'
#!/bin/bash
clear
i=0
spin='-\|/'
while ! docker image inspect ghcr.io/obot-platform/obot:latest > /dev/null 2>&1; do
  i=$(( (i+1) % 4 ))
  printf "\r[%s] Pulling Obot image, please wait..." "${spin:$i:1}"
  sleep 1
done

while ! docker ps -a --filter name=obot -q 2>/dev/null | grep -q .; do
  i=$(( (i+1) % 4 ))
  printf "\r[%s] Starting Obot container...        " "${spin:$i:1}"
  sleep 1
done

while ! docker ps --filter name=obot --filter status=running -q 2>/dev/null | grep -q .; do
  i=$(( (i+1) % 4 ))
  printf "\r[%s] Waiting for Obot container...     " "${spin:$i:1}"
  sleep 1
done

while ! curl -sf http://localhost:8080/api/healthz > /dev/null 2>&1; do
  i=$(( (i+1) % 4 ))
  printf "\r[%s] Waiting for Obot server...        " "${spin:$i:1}"
  sleep 1
done

printf "\r[✓] Obot is ready!                      \n"
WAITSCRIPT

docker pull ghcr.io/obot-platform/obot:latest
docker run -d --name obot -p 8080:8080 \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -e OBOT_SERVER_ENABLE_AUTHENTICATION=true \
  ghcr.io/obot-platform/obot:latest
