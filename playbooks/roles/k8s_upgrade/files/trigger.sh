#!/usr/bin/env bash

TEST_DOCKER=`docker ps --format '{{.Names}}' | grep test`
echo "Test Docker Name:- $TEST_DOCKER"
RUN_TEST_PID=`docker exec $TEST_DOCKER bash -c "ps -au | grep run_test | head -n 1" | awk -F ' ' '{print $2}' | grep -Eo '[0-9]{1,6}'`
echo "PID of run_test parent process running inside the test docker:- $RUN_TEST_PID"
docker exec $TEST_DOCKER bash -c "kill -10 $RUN_TEST_PID"
echo "Reached end of trigger_upgrade_tests."
