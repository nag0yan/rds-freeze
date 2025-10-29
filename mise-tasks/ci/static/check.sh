#!/bin/bash
set -euo pipefail

actionlint
pinact run -check
go vet ./...
go tool staticcheck ./...
gofmt -d .
