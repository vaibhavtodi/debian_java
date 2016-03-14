# Specifing the base image
FROM            debian:8.3

# Maintainer
MAINTAINER      "Vaibhav Todi"       <vaibhavtodi1989@gmail.com>

# Specifing the Label
LABEL           Description="Docker Image where base is Debian-8.3 and along with it some basic packages & (OpenJdk) Java-8 is setup"  \
                Version="1.0"

# Setting the Environment & Working Directory
ENV             home     /root
ENV             JAVA     /usr/lib/jvm/java-8-openjdk-amd64
WORKDIR         $home

# Installing & Setting up JAVA --->  OpenJdk-8
RUN             DEBIAN_FRONTEND=noninteractive apt-get  update                                                                         \
      &&        apt-get  install  -y   software-properties-common python-software-properties                                           \
      &&        add-apt-repository     ppa:openjdk-r/ppa                                                                               \
      &&        apt-get  update                                                                                                        \
      &&        apt-get  install  -y   openjdk-8-jre

# Copy entrpoint.sh
COPY            entrypoint.sh   /entrypoint.sh

# Clearing the Docker image
RUN             apt-get   -y    clean                                                                                                  \
      &&        rm        -rf   /var/lib/apt/lists/*                                                                                   \
      &&        rm        -rf   /var/cache/*

# CMD instruction
CMD             ["/entrypoint.sh"]

