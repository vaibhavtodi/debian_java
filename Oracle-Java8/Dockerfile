# Specifing the base image
FROM            debian:8.3

# Maintainer
MAINTAINER      "Vaibhav Todi"       <vaibhavtodi1989@gmail.com>

# Specifing the Label
LABEL           Description="Docker Image where base is Debian-8.3 and along with it some basic packages & Oracle Java-8 is setup"     \
                Version="2.0"

# Setting the Environment & Working Directory
ENV             home     /root
ENV             JAVA     /usr/lib/jvm/java-8-oracle
WORKDIR         $home

# Updating the base system & Importing, Installing & Setting up JAVA --->  Oracle-8
RUN             DEBIAN_FRONTEND=noninteractive apt-get  update                                                                         \
      &&        echo     "deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee /etc/apt/sources.list.d/webupd8team-java.list          \
      &&        echo     "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu precise main" | tee -a /etc/apt/sources.list.d/webupd8team-java.list   \
      &&        echo     oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections                         \
      &&        apt-key  adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys EEA14886                                            \
      &&        apt-get  update                                                                                                        \
      &&        apt-get  install  -y  oracle-java8-installer oracle-java8-set-default

# Copy entrpoint.sh
COPY            entrypoint.sh   /entrypoint.sh

# Clearing the Docker image
RUN             apt-get   -y    clean                                                                                                  \
      &&        rm        -rf   /var/lib/apt/lists/*                                                                                   \
      &&        rm        -rf   /var/cache/oracle-jdk8-installer

# CMD instruction
CMD             ["/entrypoint.sh"]

