#!/bin/sh

start_jid=$1
end_jid=$2

usage(){
	echo "Usage: $0 [:start_jid:] [:end_jid:]"
	echo ""
	echo "This script is built by bj Kim to handle numbers properly while deleting jobs."
	exit 1
}

[[ $# -eq 0 ]] && usage

qdel $(seq -f "%.0f" $start_jid $end_jid)
