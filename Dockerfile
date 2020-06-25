FROM centos:8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en

# RUN yum update -y -v && \
#     yum upgrade -y && \
#     yum install -y langpacks-en glibc-all-langpacks epel-release && \
#     yum install -y  python3-pip  python3 rsync git sed gcc python3-devel unzip sshpass && \
#     yum clean all && rm -rf /var/cache/yum/* && \
#     sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.conf

# run as non-root
RUN groupadd --gid 5107 containeruser \
    && useradd --home-dir /home/containeruser --create-home --uid 5107 \
    --gid 5107 --shell /bin/sh --skel /dev/null containeruser
USER 5107
WORKDIR /home/containeruser
