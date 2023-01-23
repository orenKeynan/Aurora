# Aurora

## How to run Jenkins:
docker build -t jenkins-dc - < jenkins.Dockerfile
docker run -d -p 8080:8080 -v jenkins_home:/var/jenkins_home jenkins-dc-7