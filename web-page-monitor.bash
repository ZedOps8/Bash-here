#!/bin/bash

# Web Page Monitoring Script

url="https://example.com"
response=$(curl -Is $url | head -n 1 | cut -d ' ' -f2)

if [ "$response" == "200" ]; then
    echo "The website is accessible."
else
    echo "The website is down. HTTP Status Code: $response"
fi
    
