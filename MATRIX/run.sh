#!/usr/bin/env bash

export SPDZ_EXT_LIB = "~/SPDZ-2-Extension-MpcHonestMajority/"

# read the arguments without party id

argc=$#
argv=($@)
values=""

for (( j=1; j<argc; j++ )); do
    values+=`echo ${argv[j]}`
    values+=' '
done

idx=${1}

cd ~/SPDZ-2

if [ "$argc" -eq "2" ]; then
    ./Server.x ${values}
else
    sleep 5
    ./Player-Online.x ${values} ${idx}
fi


