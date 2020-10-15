#!/bin/bash
aws s3 sync ./src s3://www.a8b.io --acl public-read
aws cloudfront create-invalidation --distribution-id E1M1GLPMJAEAI9 --paths "/*"
