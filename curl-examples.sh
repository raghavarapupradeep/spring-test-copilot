#!/bin/bash
# Spring Boot MVC - CURL Examples
# Test the endpoints using curl commands

BASE_URL="http://localhost:8080"

echo "=== Testing Spring Boot MVC Endpoints ==="
echo ""

# 1. GET Home Page
echo "1. GET Home Page"
echo "Command: curl -X GET $BASE_URL/"
echo ""

# 2. GET Hello Page with name parameter
echo "2. GET Hello Page (name=John)"
echo "Command: curl -X GET '$BASE_URL/hello?name=John'"
echo ""

# 3. GET Hello Page with another name
echo "3. GET Hello Page (name=Pradeep)"
echo "Command: curl -X GET '$BASE_URL/hello?name=Pradeep'"
echo ""

# 4. POST Form Submission
echo "4. POST Form Submission (with inputValue)"
echo "Command: curl -X POST -d 'inputValue=Hello from CURL' $BASE_URL/submit"
echo ""

# 5. POST Form Submission with different value
echo "5. POST Form Submission (with different value)"
echo "Command: curl -X POST -d 'inputValue=Testing Spring Boot' $BASE_URL/submit"
echo ""

# Run actual curl commands (uncomment to execute)
echo "=== Running CURL Examples ==="
echo ""

# Example 1: GET request
echo "Example 1: Home Page (will return HTML)"
curl -s -X GET "$BASE_URL/" | head -20
echo ""
echo ""

# Example 2: GET with parameter
echo "Example 2: Hello Page with name=User"
curl -s -X GET "$BASE_URL/hello?name=User" | head -20
echo ""
echo ""

# Example 3: POST request
echo "Example 3: Form Submission with inputValue"
curl -s -X POST -d "inputValue=Hello%20from%20CURL" "$BASE_URL/submit" | head -20
echo ""
