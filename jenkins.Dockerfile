FROM jenkins/jenkins:lts
USER root
RUN apt-get update -qq \
    && apt-get install -qqy apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update  -qq \
    && apt-get -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin docker-compose
RUN curl -SL \  
  "https://github.com/docker/compose/releases/download/v2.15.1/docker-compose-linux-x86_64" \  
  -o /usr/local/bin/docker-compose \  
  && chmod a+x /usr/local/bin/docker-compose
RUN usermod -aG docker jenkins
USER jenkins
