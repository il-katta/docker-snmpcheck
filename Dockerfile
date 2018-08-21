FROM ruby

RUN set -x && \
    gem install snmp && \
    wget http://www.nothink.org/codes/snmpcheck/snmpcheck-1.9.rb -O /snmpcheck && \
    chmod +x /snmpcheck

ENTRYPOINT [ "/snmpcheck" ]
