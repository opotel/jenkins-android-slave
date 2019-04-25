FROM jenkins/ssh-slave

LABEL "org.label-schema.vendor"="OPOTEL Ltd" \
    version="1.0" \
    maintainer="dev@opotel.com" \
    description="Build, Test and Deploy as docker image Node.js projects"
    
RUN curl -sSL https://get.docker.com/ | sh
RUN curl -sL https://deb.nodesource.com/setup_11.x -o nodesource_setup.sh && bash nodesource_setup.sh
RUN apt-get install -y nodejs
RUN npm install -g typescript 
RUN npm -g install selenium-node-webdriver 
RUN npm -g install karma 
RUN npm -g install mocha 
#optional
#RUN npm install -g cucumber 

