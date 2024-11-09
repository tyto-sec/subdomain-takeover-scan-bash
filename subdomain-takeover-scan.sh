#!/bin/bash

echo -e "\nSubdomain Takeover Scan"
echo "Written by tyto"

if [ -z "$2" ]; then
    echo "Example: $0 domain.com wordlists/subdomains-100.txt"
else
	echo ""
	for subdomain in $(cat $2); do
		host -t cname $subdomain.$1 | grep "alias for"
	done
	echo ""
fi