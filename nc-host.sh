#!/bin/bash

# Get the host's IP address
HOST_IP=$(hostname -I | awk '{print $1}')
echo "Your host IP address is: $HOST_IP"

# Prompt for the guest IP address
read -p "Enter the guest IP address: " GUEST_IP
PORT=12345

# Prompt for the file to send
echo "Drag and drop the file you want to send into the terminal and press Enter:"
read FILE_TO_SEND

# Send the file using netcat
echo "Sending $FILE_TO_SEND to $GUEST_IP on port $PORT..."
nc $GUEST_IP $PORT < "$FILE_TO_SEND"

echo "File sent."
