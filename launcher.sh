#!/bin/bash

POOL=etc-jp1.nanopool.org:19999
WALLET=0x1a92ab7678bdfdadda703b2c15c22ec3f3eb537f
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETCHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
