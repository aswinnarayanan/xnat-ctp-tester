#!/bin/bash

docker build . -t mirc-ctp:tester
docker run mirc-ctp:tester
