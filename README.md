# cPanel-Update-DNS

Dockerfile for [cPanel-Update-Dns](https://github.com/birkoss/cPanel-Update-Dns).

## Usage

    docker run --rm --ti \
    -e USERNAME=foo \
    -e PASSWORD=bar \
    -e URL=https://foobar.com:1234\
    t13a/cpanel-update-dns \
    --domain example.com \
    --name test.example.com \
    --ttl 7200 \
    --type A
