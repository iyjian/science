#!/bin/bash

ssh \
-o StrictHostKeyChecking=no \
-o ExitOnForwardFailure=yes \
-o GatewayPorts=true \
-o ServerAliveInterval=60 \
-D $LOCAL_PORT \
$USER@$REMOTE_HOST
