# Aurora

## How to run Jenkins:
docker build -t jenkins-dc -f jenkins.Dockerfile .
docker run -d -p 8080:8080 -v /var/run/docker.sock:/var/run/docker.sock -v jenkins_home:/var/jenkins_home jenkins-dc

## Plugins of jenkins
Docker

