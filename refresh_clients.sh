#!/usr/bin/env bash
set -euo pipefail

# Path to the wfn executable; override with the WFN_PATH env var
WFN="${WFN_PATH:-wfn}"

if ! command -v "$WFN" >/dev/null 2>&1; then
  echo "Error: '$WFN' WebFunction CLI tool was not found in your PATH." >&2
  echo "You can specify its location using the WFN_PATH environment variable, e.g.:" >&2
  echo "  WFN_PATH=/path/to/wfn $0" >&2
  echo "If you don't have the tool, get/build it from https://github.com/webfunction-protocol/webfunction-cli" >&2
  exit 1
fi

"$WFN" codegen --target js --url https://api.reservepay.com/merchants -o ./src/clients/merchant.js
"$WFN" codegen --target js --url https://api.reservepay.com/terminals -o ./src/clients/terminal.js
"$WFN" codegen --target js --url https://api.reservepay.com/sdk -o ./src/clients/sdk.js
