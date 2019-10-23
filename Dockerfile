FROM registry.redhat.io/ubi8/ubi

RUN yum --disableplugin=subscription-manager -y install java-1.8.0-openjdk-devel openssl-devel openssl
RUN mkdir -p /tmp/home
RUN chmod 777 /tmp/home
RUN chown 1001:1001 /tmp/home
ENV HOME /tmp/home
WORKDIR /tmp/home

COPY . streams-perf

USER 1001

CMD ["/bin/sleep", "1d"]