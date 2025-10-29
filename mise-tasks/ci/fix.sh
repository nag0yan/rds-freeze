#!/bin/bash
set -euo pipefail

mise ci:static:fix
mise ci:build
mise ci:test
