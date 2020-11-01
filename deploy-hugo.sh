#!/bin/bash
hugo -D --source hugo-src
aws s3 sync ./hugo-src/public s3://www.a8b.io --acl public-read --delete
aws cloudfront create-invalidation --distribution-id E1M1GLPMJAEAI9 --paths "/*"
