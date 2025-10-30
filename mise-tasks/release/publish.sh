#!/bin/bash
set -euo pipefail

go tool goreleaser release
