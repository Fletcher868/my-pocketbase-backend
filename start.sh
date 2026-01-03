#!/bin/bash

# 1. Ensure the binary is executable (Git often removes this)
chmod +x ./pocketbase

# 2. Run PocketBase using the $PORT environment variable
./pocketbase serve --http 0.0.0.0:"$PORT"
