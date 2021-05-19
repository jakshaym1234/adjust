#!/bin/bash
mkdir adjust
git clone https://github.com/sawasy/http_server adjust

docker build -t rubyhttps:latest .

rm -fr adjust