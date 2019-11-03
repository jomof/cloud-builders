TARGET=$1
SHORT_SHA=${SHORT_SHA:-local-build-short-sha}
DOCKER_BASE=gcr.io/$PROJECT_ID/$TARGET-builder
docker pull $DOCKER_BASE
docker build \
    --cache-from=$DOCKER_BASE:latest \
    -f ./$TARGET/DockerFile \
    -t $DOCKER_BASE \
    -t $DOCKER_BASE:latest \
    -t $DOCKER_BASE:$BUILD_ID \
    -t $DOCKER_BASE:$SHORT_SHA \
    .

docker push $DOCKER_BASE > nul
docker push $DOCKER_BASE:latest > nul
docker push $DOCKER_BASE:$BUILD_ID > nul
docker push $DOCKER_BASE:$SHORT_SHA > nul
