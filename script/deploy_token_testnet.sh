#!/usr/bin/env bash

if [ -f .env ]
then
    export $(cat .env | xargs)
else
    echo "Please set your .env file"
    exit 1
fi

forge create ./src/EchoToken.sol:EchoToken --rpc-url 'https://rpc.testnet.taraxa.io' --private-key ${PRIVATE_KEY} --legacy