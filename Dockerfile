FROM registry.fedoraproject.org/fedora:37

RUN dnf install 'dnf-command(copr)' -y
RUN dnf copr enable @dnsoarc/dnsperf
RUN dns install dnfperf

COPY dns-performance /
COPY dns.txt /opt
    
CMD ["sh", "dns-performance"]
