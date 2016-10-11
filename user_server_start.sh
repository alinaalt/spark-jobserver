#!/bin/bash
adduser --disabled-password --no-create-home --uid $USER_UID --gecos '' $USER 
mkdir -p /var/log/job-server
chown $USER.$USER /var/log/job-server
chown $USER.$USER /database
chown $USER.$USER /app
chown $USER.$USER /tmp/spark-jobserver
su -m $USER -c '/app/server_start.sh'

