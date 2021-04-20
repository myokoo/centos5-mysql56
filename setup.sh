#!/bin/bash
# download mysql5.6 RPMS
VERSION="5.6.36-1"
BASE_URL="https://downloads.mysql.com/archives/get/p/23/file"
SCRIPT_DIR=$(cd $(dirname $0); pwd)

mkdir -p ${SCRIPT_DIR}/rpms
cd ${SCRIPT_DIR}/rpms
for module in server devel client shared-compat shared
do
    curl -L -sS -O ${BASE_URL}/MySQL-${module}-${VERSION}.rhel5.x86_64.rpm
done
