FROM alpine
# Install dependencies
RUN apk update
RUN apk add --update iptables ip6tables curl bind-tools

COPY startup.sh startup.sh

CMD ["sh", "./startup.sh"]
