#!/bin/bash
set -euo pipefail

#USAGE arg "<tag>" help="Create and push a git tag for the current version"

VERSION="${usage_tag?}"
git tag -a "${VERSION}" -m "Release v${VERSION}"
git push origin "${VERSION}"
