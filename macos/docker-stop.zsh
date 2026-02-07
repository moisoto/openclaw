echo "Stopping Running OpenClaw Containers..."
docker ps -q --filter ancestor=openclaw:local | xargs -r docker stop

echo "Removing OpenClaw Containers"
docker ps -q -a --filter ancestor=openclaw:local | xargs -r docker rm
