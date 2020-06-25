FROM busybox:ubuntu-14.04
RUN echo "nobody:x:5107:5107:nobody:/:/bin/sh" >> /etc/passwd
RUN echo "nobody:x:5107:" >> /etc/group
