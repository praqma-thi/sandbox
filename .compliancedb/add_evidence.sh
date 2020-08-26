#! /bin/bash

# USAGE:
# $1 token
# $2 sha
# $3 evidence_type
# $4 is_compliant [true|false]
# $5 url
# $6 description

#
# ./add_evidence.sh localhost cern hadroncollider '084c799cd551dd1d8d5c5f9a5d593b2e931f5e36122ee5c793c1d08a19839cc0' build


curl -H 'Content-Type: application/json' \
     -u $1:unused \
     -X PUT \
     -d '{"evidence_type": "'"$3"'", "contents": {"is_compliant": "'"$4"'", "url": "'"$5"'", "description": "'"$6"'"}}' \
     https://app.compliancedb.com/api/v1/projects/praqma-thi/sandbox/artifacts/$2
