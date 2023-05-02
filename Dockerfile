FROM registry.fedoraproject.org/fedora:latest

RUN dnf install 'dnf-command(copr)' -y
RUN dnf copr enable @dnsoarc/dnsperf
RUN dns install dnfperf

COPY dns-performance /
    
CMD ["sh", "dns-performance"]
