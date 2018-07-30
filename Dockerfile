FROM ruby

RUN set -x && \
    apt-get update && \
    apt-get install -y wget && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/* && \
    wget http://www.nothink.org/codes/snmpcheck/snmpcheck-1.9.rb -O /snmpcheck && \
    chmod 0755 /snmpcheck

RUN gem install snmp

ENTRYPOINT ["/snmpcheck"]
