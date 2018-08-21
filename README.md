# docker-snmpcheck

```
docker run --rm -ti katta/snmpcheck 192.168.1.1
```
one command build & run:

```
cat <<EOF | docker build - -t katta/snmpcheck && docker run -ti --rm katta/snmpcheck 192.168.1.1
FROM ruby
RUN set -x && \
    gem install snmp && \
    wget http://www.nothink.org/codes/snmpcheck/snmpcheck-1.9.rb -O /snmpcheck && \
    chmod +x /snmpcheck
ENTRYPOINT [ "/snmpcheck" ]
EOF
```
