#!/bin/bash
set -euo pipefail

actionlint
pinact run -check
find . -name '*.sh' -exec shellcheck {} +
find . -name '*.sh' -exec shfmt -d {} +
go vet ./...
go tool staticcheck ./...
gofmt -d .
