#!/bin/bash

ipa-client-install --force-join -U --domain={{ipa_domain}} --server={{ipa_server}} -p {{ipa_admin}} --ntp-server={{ntp_server}} -w {{ipa_password}} >> /var/log/ipa-client-install.log
touch /var/ipa.ok

rm -- "$0"
