#!/usr/bin/bash

set -e

MOD_SWITCH_STATUS="$(cat /dev/modsw)"

if [ "$MOD_SWITCH_STATUS" == "1" ]; then
  [ -e /root/payloads/mod1.d/payload.sh ] && bash /root/payloads/mod1.d/payload.sh || true
elif [ "$MOD_SWITCH_STATUS" == "2" ]; then
  [ -e /root/payloads/mod2.d/payload.sh ] && bash /root/payloads/mod2.d/payload.sh || true
else
  true
fi
