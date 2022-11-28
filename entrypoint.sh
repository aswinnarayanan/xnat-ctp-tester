#!/bin/bash

java -jar Runner.jar start &
sleep 10
java -jar Runner.jar stop
