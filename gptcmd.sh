#! /bin/bash
if [ -z "$OPENAI_API_KEY" ]
then
    echo "Warning: OPENAI_API_KEY is not set in environment variable"
else
    response=$(curl https://api.openai.com/v1/chat/completions -s -H "Authorization: Bearer $OPENAI_API_KEY" \
                  -H "Content-Type: application/json" \
                  -d '{"model": "gpt-3.5-turbo","messages": [{"role": "user", "content": "Could you write me a Linux command that will do the following: '"${1}"'? Just output the command itself without explaination."}], "max_tokens": 50,"temperature": 0}')
    # Extract the generated text from the response
    generated_text=$(echo -E $response | jq -r '.choices[0].message.content')
    # Print the generated text
    echo -E $generated_text | sed '/^$/d'
fi
