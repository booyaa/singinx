#!/bin/bash
clear

printf "Version in the URL path\n"
printf "=======================\n"

URL=http://127.0.0.1:8080/api/v2/foo
echo GET $URL
curl -X GET -d 'foo=bar' $URL

printf "\n"

URL=http://127.0.0.1:8080/api/v2/bar
echo POST $URL
curl -X POST -d 'bar=foo' $URL

printf "\n\nVersion as a parameter\n"
printf "======================\n"

URL=http://127.0.0.1:8080/api/foo
echo GET $URL
curl -X GET -d 'foo=bar&version=3' $URL

printf "\n"

URL=http://127.0.0.1:8080/api/bar
echo POST $URL
curl -X POST -d 'foo=bar&version=3' $URL

printf "\n"
