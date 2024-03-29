#!/bin/bash

url=$1

# Check if URL is provided
if [ -z "$url" ]; then
  echo "Please provide a URL."
  exit 1
fi

# Get header information using curl
header=$(curl -I $url)

# Check for X-XSS-Protection header
if echo "$header" | grep -q "X-XSS-Protection:"; then
  echo "X-XSS-Protection header found."
else
  echo "X-XSS-Protection header not found."
fi

# Check for X-Content-Type-Options header
if echo "$header" | grep -q "X-Content-Type-Options:"; then
  echo "X-Content-Type-Options header found."
else
  echo "X-Content-Type-Options header not found."
fi

# Check for Strict-Transport-Security header
if echo "$header" | grep -q "Strict-Transport-Security:"; then
  echo "Strict-Transport-Security header found."
else
  echo "Strict-Transport-Security header not found."
fi

# Check for Content-Security-Policy header
if echo "$header" | grep -q "Content-Security-Policy:"; then
  echo "Content-Security-Policy header found."
else
  echo "Content-Security-Policy header not found."
fi

# Check for X-Frame-Options header
if echo "$header" | grep -q "X-Frame-Options:"; then
  echo "X-Frame-Options header found."
else
  echo "X-Frame-Options header not found."
fi
