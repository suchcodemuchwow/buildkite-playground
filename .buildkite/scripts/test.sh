#!/bin/bash

set -uo pipefail

COUNT="$(buildkite-agent meta-data get test-iterations)"
TARGET_BRANCH="$(buildkite-agent meta-data get target-branch)"

echo "Test.sh Running ${COUNT}"

cat << EOF | buildkite-agent pipeline upload
steps:
  - command: "git checkout $TARGET_BRANCH && git fetch && npm install && npm run test"
    parallelism: "$COUNT" 
EOF