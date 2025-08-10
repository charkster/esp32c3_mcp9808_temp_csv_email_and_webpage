# esp32c3_mcp9808_temp_csv_email_and_webpage
Micropython script for esp32c3 and mcp9808 to log temperature to a csv file and email it as an attachment.

This is a re-write of my other project which uses esp32s3 and dual threads (one thread for web server and one thread for temperature logger). This project uses an asyncio web server and can run on a single core MCU.
Two include files are needed (MCP9808.py and umail.py) which can be downloaded from my [previous esp32s3 repo](https://github.com/charkster/esp32s3_mcp9808_temp_csv_email_and_webpage).

I plan to do a code clean-up to improve readability (and reduce length of the script).

I have been wanting to use asyncio in a project for a while... it is very cool. 
