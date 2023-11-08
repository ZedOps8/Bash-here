#!/bin/bash

# Web Page Monitoring Script

url="https://example.com"  # Replace with the URL of the web page you want to monitor
email="your@email.com"    # Replace with your email address for alerts

response=$(curl -Is "$url" | head -n 1 | cut -d ' ' -f2)

if [ "$response" == "200" ]; then
    echo "The website $url is accessible."
else
    echo "The website $url is down. HTTP Status Code: $response"
    echo "Sending email alert..."
    echo "The website $url is down. HTTP Status Code: $response" | mail -s "Website Status Alert" "$email"
fi
    
