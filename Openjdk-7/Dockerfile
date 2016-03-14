# Specifing the base image
FROM            debian:8.3

# Maintainer
MAINTAINER      "Vaibhav Todi"       <vaibhavtodi1989@gmail.com>

# Specifing the Label
LABEL           Description="Docker Image where base is Debian-8.3 and along with it some basic packages & (OpenJdk) Java-7 is setup"  \
                Version="1.0"

# Setting the Environment & Working Directory
ENV             home     /root
ENV             JAVA     /usr/lib/jvm/java-7-openjdk-amd64
WORKDIR         $home

# Installing & Setting up JAVA --->  OpenJdk-7
RUN             DEBIAN_FRONTEND=noninteractive apt-get  update                                                                         \
      &&        apt-get  update                                                                                                        \
      &&        apt-get  install  -y  openjdk-7-jre

# Copy entrpoint.sh
COPY            entrypoint.sh   /entrypoint.sh

# Clearing the Docker image
RUN             apt-get   -y    clean                                                                                                  \
      &&        rm        -rf   /var/lib/apt/lists/*                                                                                   \
      &&        rm        -rf   /var/cache/*

# CMD instruction
CMD             ["/entrypoint.sh"]

