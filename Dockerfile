# FROM fabric8/java-centos-openjdk8-jdk
#FROM parrotstream/centos-openjdk
FROM registry.redhat.io/ubi8/ubi

RUN yum --disableplugin=subscription-manager -y install java-1.8.0-openjdk-devel openssl-devel openssl

COPY . streams-perf

USER 1001

CMD ["/bin/sleep", "1d"]