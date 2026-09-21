#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$DIR"
python3 -m http.server 8000 &
SERVER_PID=$!
sleep 0.5
open "http://localhost:8000"
echo "ClavierFlash is running at http://localhost:8000"
echo "Close this window when you are done studying."
wait $SERVER_PID
