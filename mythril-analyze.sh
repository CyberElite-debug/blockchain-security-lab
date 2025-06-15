#!/bin/bash
mkdir -p reports
for file in contracts/*.sol; do
    name=$(basename "$file" .sol)
    echo "[+] Analyzing $name.sol with Mythril..."
    myth analyze "$file" > "reports/${name}_mythril_report.txt" 2>&1
    echo "[+] Report saved to reports/${name}_mythril_report.txt"
done
