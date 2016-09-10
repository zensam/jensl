FROM jenkinsci/jnlp-slave
# ENV TERM=xterm JENHOME=/var/jenkins_home JENREF=/usr/share/jenkins/ref
USER root
RUN apt-get update \
    && apt-get install -y sudo \
    ant \
    php-pear \
    phpunit \
    php-codesniffer \
    phploc \
    pdepend \
    phpcpd \
    phpdox \
    && echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers \
    && rm -rf /var/lib/apt/lists/*
USER jenkins
#RUN mkdir -p /home/jenkins/.jenkins
#VOLUME /home/jenkins/.jenkins
#WORKDIR /home/jenkins
#ENTRYPOINT ["jenkins-slave"]
