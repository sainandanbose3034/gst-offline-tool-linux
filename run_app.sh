#!/bin/bash
# Move to the directory (quotes handle the spaces)
cd "/home/sainandan/Desktop/GST Offline Tool"

echo "Attempting to start Node.js server..."

# Use the full path to node to ensure the launcher finds it
# (Run 'which node' in your terminal to confirm it is /usr/bin/node)
/usr/bin/node app.js &

echo "Waiting for server to initialize on port 3010..."
sleep 3

echo "Opening browser..."
/usr/bin/xdg-open http://localhost:3010

echo "------------------------------------------------"
echo "If the browser didn't open, look for errors above."
echo "Press ENTER to close this terminal."
read  # This keeps the window open for you to read!
