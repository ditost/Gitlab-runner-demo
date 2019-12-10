#!/bin/bash

# We ask for the Gitlab IP
read -p "Introduce your gitlab hostname: " gitlab_ip
read -p "Introduce your gitlab registration token: " gitlab_token

docker_id=$(docker run -d -v /var/run/docker.sock:/var/run/docker.sock -v /tmp/gitlab_runner/config:/etc/gitlab-runner gitlab/gitlab-runner)
sleep 5
docker exec -it "${docker_id}"  gitlab-runner register -n --url "${gitlab_ip}" --registration-token "${gitlab_token}" --clone-url "${gitlab_ip}" --executor docker --docker-image "docker:latest" --docker-privileged

