#!/bin/bash

cat <<EOF | docker build - -t katta/snmpcheck && docker run -ti --rm katta/snmpcheck "$@"
FROM ruby

RUN set -x && \
    gem install snmp && \
    wget http://www.nothink.org/codes/snmpcheck/snmpcheck-1.9.rb -O /snmpcheck && \
    chmod +x /snmpcheck

ENTRYPOINT [ "/snmpcheck" ]
EOF
