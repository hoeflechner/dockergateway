#!/bin/sh
CMD="${CMD:-sh}"

ip route del default
ip route add default via ${GATEWAY}

echo running $CMD
$CMD
