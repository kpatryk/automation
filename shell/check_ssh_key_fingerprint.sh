#!/bin/bash

key=${1:-~/.ssh/id_rsa}

echo "Checking SHA256 fingerprint of $key"
ssh-keygen  -E sha256 -lf $key

echo "Checking MD5 fingerprint of $key"
ssh-keygen  -E md5 -lf $key
