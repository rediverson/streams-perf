FROM registry.redhat.io/openjdk/openjdk-8-rhel8

COPY . streams-perf

CMD ["/bin/sleep", "1d"]