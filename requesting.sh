#!/bin/bash

echo "--Rails"
n=0; time while (( n++ < 1000 )); do (curl --silent http://localhost:3000/cats.json > /dev/null ); done

echo "--Golang"
n=0; time while (( n++ < 1000 )); do (curl --silent http://127.0.0.1:8080/v1/cats//cats.json > /dev/null ); done