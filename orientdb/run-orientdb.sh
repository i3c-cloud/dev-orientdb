#!/bin/bash

case "$1" in
	startup)
		#cd $JBOSS_HOME/bin
		#cp $JSRC/standalone/deployments/* $JBOSS_HOME/standalone/deployments
		#if [ ! -e $JBOSS_HOME/standalone/configuration/standalone.xml ]; then
		#	cp -rpT $JBOSS_HOME/standalone/configuration.backup $JBOSS_HOME/standalone/configuration
		#fi	
		#./standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0
		export ORIENTDB_ROOT_PASSWORD=root
		cd /orientdb/bin
		./server.sh
		while true; do
			sleep 1000
		done
		;;
	echo)
		echo "Echo from /run-orientdb.sh: ${@:2}"
		;;
	*)
		echo "/r Usage(run-orientdb):"	
		echo "======================================"
		echo "docker exec orientdb /r echo 'Hello World!'"
		;;
esac