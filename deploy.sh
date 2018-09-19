#!/bin/bash
aws s3 cp ./src s3://www.a8b.io --recursive --acl public-read
