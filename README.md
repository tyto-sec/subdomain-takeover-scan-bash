# Subdomain Takeover Scan Script

This script performs a scan to detect potential subdomain takeover vulnerabilities on a specified domain by checking for CNAME records pointing to external services. Subdomain takeovers can occur when a subdomain's DNS entry points to a service that is no longer in use, making it available for takeover.

## Features

- **CNAME Record Check**: Scans each subdomain from a specified wordlist for CNAME (alias) records.
- **Potential Takeover Detection**: Displays subdomains with CNAME records that may point to external services, which could indicate takeover risk.

## Prerequisites

- **host**: The script uses the `host` command to query CNAME records. Make sure it’s installed (use `dnsutils` on Debian-based systems if needed).
- **Wordlist**: A text file containing possible subdomain names, with each entry on a new line.

## Usage

Run the script with the target domain and a subdomain wordlist as arguments:

```bash
./subdomain_takeover_scan.sh <domain> <wordlist>
```

## Notes

- **Authorization**: Ensure you have permission to scan the target domain for subdomain takeovers.
- **Wordlist Quality**: A comprehensive wordlist can improve detection of potential takeover vulnerabilities.

## Author

Written by tyto.
