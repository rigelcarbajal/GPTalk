#!/bin/bash

# Assign the first argument to the prompt variable
prompt=$1

# OpenAI environment variables
OPENAI_KEY="Set here your API KEY"
OPENAI_URL="https://api.openai.com/v1/chat/completions"
OPENAI_ROLE="user"
OPENAI_MODEL="gpt-3.5-turbo"

# Join content arguments into a single prompt
prompt=$(printf "%s" "${prompt}")

# Create the parameters dictionary for the request body
parameters=$(cat <<EOF
{
    "model": "$OPENAI_MODEL",
    "messages": [
        {"role": "$OPENAI_ROLE", "content": "$prompt"}
    ]
}
EOF
)

# Perform the request and store the response in a variable
response=$(curl -s -X POST -H "Content-Type: application/json" -H "Authorization: Bearer $OPENAI_KEY" -d "$parameters" "$OPENAI_URL")

# Extract the content from the response
content=$(echo "$response" | grep -o -E '"content":"[^"]+' | cut -d: -f2- | sed 's/"//g')

# Print the content
echo "$content"

