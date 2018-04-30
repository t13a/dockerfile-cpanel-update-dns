FROM alpine AS builder

RUN apk add --no-cache git && \
    git clone "https://github.com/oakman/cPanel-Update-Dns.git" /opt/cpanel-update-dns

FROM python:alpine

COPY --from=builder /opt/cpanel-update-dns/updatedns.py /updatedns.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
