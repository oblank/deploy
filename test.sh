#!/bin/bash
PWD=cat docker-db.yml|grep MONGODB_USER|awk -F ":" '{print $2}'
#echo ${PWD//\"}
echo ${PWD}



#curl http://127.0.0.1:8000/runningdoctor/services/rest/test/phpinfo/json