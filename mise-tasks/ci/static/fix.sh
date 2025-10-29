#!/bin/bash
set -euo pipefail

actionlint
pinact run
go vet ./...
go tool staticcheck ./...
gofmt -w .
