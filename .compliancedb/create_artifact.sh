#! /bin/bash

# USAGE:
# $1 token
# $2 sha
# $3 filename
# $4 description
# $5 git_sha
#
# ./create_artifact.sh localhost cern hadroncollider '084c799cd551dd1d8d5c5f9a5d593b2e931f5e36122ee5c793c1d08a19839cc0' accelerator.jar 'My artifact created by build number 1337 on server X'


curl -H 'Content-Type: application/json' \
     -u $1:unused \
     -X PUT \
     -d '{"sha256": "'"$2"'", "filename": "'"$3"'", "description": "'"$4"'", "git_commit": "'"$5"'", "is_compliant": true}' \
    https://app.compliancedb.com/api/v1/projects/praqma-thi/sandbox/artifacts/
