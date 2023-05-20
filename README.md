# GPTalk

GPTalk is a script that interacts with the OpenAI API to generate human-like language based on a given prompt.

The script is written in Bash and utilizes cURL to make HTTP requests to the OpenAI API. It assigns the first argument passed to the script as the prompt and sends it to the API for processing. The generated content is extracted from the API response and printed to the console.

### Requirements

- Bash shell environment (macOS, Linux)
- cURL command-line tool

### Installation and Usage

1. Clone or download the GPTalk repository to your local machine.
2. Open a terminal and navigate to the project directory.
3. Set the necessary variables inside the file: 

-  `OPENAI_KEY`: Your OpenAI API key. ( Get an API KEY [here](http://platform.openai.com/) )
-  `OPENAI_URL`: The OpenAI API endpoint URL. 
-  `OPENAI_ROLE`: The role for the prompt (default: "user"). 
-  `OPENAI_MODEL`: The OpenAI model to use (default: "gpt-3.5-turbo").

5. Make the script executable by running the following command:
```bash
   chmod +x GPTalk.sh
```
6. Move the script to a suitable location, such as the `bin` folder, to make it accessible system-wide. For example:
```bash
	mv GPTalk.sh /usr/local/bin/gptalk
```
7.  Open a new terminal window or reload your shell configuration.
8.  To generate content, run the following command:
```bash
	> gptalk Enter your prompt here
```
Replace `"Enter your prompt here"` with your desired prompt.
