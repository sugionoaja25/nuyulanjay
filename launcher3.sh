#!/bin/bash

POOL=etc-jp1.nanopool.org:19999
WALLET=0x9eab4b0fc468a7f5d46228bf5a76cb52370d068d
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-lol

cd "$(dirname "$0")"

chmod +x ./lolMiner && ./lolMiner --algo ETCHASH --pool $POOL --user $WALLET.$WORKER --tls 0 $@
