#!/bin/sh

cd /dev/shm # use tmpfs

cat << EOF > config.py
CONFIG = {
    'username': '${USERNAME}',
    'password': '${PASSWORD}',
    'url': '${URL}'
}
EOF

cp /updatedns.py .

python updatedns.py "${@}"
