#!/bin/bash

success_status_code=0
failure_status_code=1

echo 'Running unit tests'

echo "" > coverage.txt

for d in $(go list ./... | grep -v vendor); do
    go test -coverprofile=profile.out -covermode=atomic $d
    a=$?
    cat profile.out >> coverage.txt
    rm profile.out
    if [ $a -eq $failure_status_code ]; then
        echo "The tests failed, please fix them to continue"
        exit $a
    fi
done

if [ $? -eq $success_status_code ]
    then
        echo "The tests ran successfully"
    else
        echo "The tests failed, please fix them to continue"
        exit $failure_status_code
fi

exit $success_status_code