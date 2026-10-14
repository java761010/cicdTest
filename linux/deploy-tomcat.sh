#!/usr/bin/env bash
set -euo pipefail
# Run on Linux with a WAR already copied to the host.
# Usage: TOMCAT_HOME=/opt/tomcat ./deploy-tomcat.sh /tmp/hello-ci-lab.war
WAR_PATH="${1:?Usage: TOMCAT_HOME=/path/to/tomcat $0 /path/to/hello-ci-lab.war}"
TOMCAT_HOME="${TOMCAT_HOME:?Set TOMCAT_HOME first}"
test -f "$WAR_PATH"
test -d "$TOMCAT_HOME/webapps"
cp "$WAR_PATH" "$TOMCAT_HOME/webapps/hello-ci-lab.war"
echo "WAR copied to $TOMCAT_HOME/webapps/hello-ci-lab.war"
echo "Deployment/reload policy depends on Tomcat configuration."
