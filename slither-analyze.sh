#!/bin/bash
mkdir -p reports
for file in contracts/*.sol; do
    name=$(basename "$file" .sol)
    echo "[+] Analyzing $name.sol with Slither..."
    slither "$file" > "reports/${name}_slither_report.txt" 2>&1
    echo "[+] Report saved to reports/${name}_slither_report.txt"
done
