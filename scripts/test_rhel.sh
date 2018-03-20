#!/usr/bin/env bash
set -e

sudo buildkite-agent artifact download "$PROJECT_NAME/$PLATFORM_PACKAGE_KEY/*.rpm" .

sudo rpm -i $PROJECT_NAME/$PLATFORM_PACKAGE_KEY/*.rpm

# Test the project itself here
bash -c /home/omnibus/test_project.sh