#!/bin/bash
set -euo pipefail

actionlint
pinact run
find . -name '*.sh' -exec shellcheck {} +
find . -name '*.sh' -exec shfmt -w {} +
go vet ./...
go tool staticcheck ./...
gofmt -w .
