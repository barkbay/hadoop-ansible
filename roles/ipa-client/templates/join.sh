#!/bin/bash

ipa-client-install --force-join -U --domain={{ipa_domain}} --server={{ipa_server}} -p {{ipa_admin}} --ntp-server={{ntp_server}} -w {{ipa_password}}
if [ $? -eq 0 ]; then
    touch /var/ipa.ok
fi

rm -- "$0"
