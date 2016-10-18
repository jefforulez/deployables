#!/bin/bash

pushd "$( dirname "${BASH_SOURCE[0]}" )" > /dev/null
. ./environment.sh $( dirname "${BASH_SOURCE[0]}" )
popd > /dev/null


output=$(
    ./bin/deployables ecs_deploy 2>&1
)

if [[ $? == 0 ]] ; then
	echo "[ok] ecr_login succeeded"
else
	echo "[error] ecr_login failed"
	echo "$output"
	exit 1
fi
