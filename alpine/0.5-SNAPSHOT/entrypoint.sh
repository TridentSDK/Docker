#!/bin/sh

set -e

MIN_MEMORY=${MIN_MEMORY:=512M}
MAX_MEMORY=${MAX_MEMORY:=1G}
SERVER_ARGUMENTS=${SERVER_ARGUMENTS:=$@}

java -Dnetty.epoll.enabled=false -Xms$MIN_MEMORY -Xmx$MAX_MEMORY $JAVA_FLAGS -jar /opt/tridentsdk/tridentsdk.jar $SERVER_ARGUMENTS -noepoll $SERVER_FLAGS
