#!/bin/bash
set -euo pipefail

mise ci:static:check
mise ci:build
mise ci:test
