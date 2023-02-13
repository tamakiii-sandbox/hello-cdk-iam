FROM amazonlinux:2022.0.20230118.3

RUN dnf install -y \
      which \
      man \
      make \
      less \
      findutils \
      && \
  dnf clean all && \
  rm -rf /var/cache/dnf

RUN dnf install -y \
      nodejs-1:18.4.0-1.amzn2022.0.3 \
      npm-1:8.12.1-1.18.4.0.1.amzn2022.0.3 \
      && \
  dnf clean all && \
  rm -rf /var/cache/dnf
