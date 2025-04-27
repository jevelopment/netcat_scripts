#!/bin/bash

# Get the guest's IP address
GUEST_IP=$(hostname -I | awk '{print $1}')
PORT=12345

# Listen for incoming files using netcat
echo "Your guest IP address is: $GUEST_IP"
echo "Listening for incoming files on port $PORT..."
nc -l -p $PORT > received_file

echo "File received and saved as 'received_file'."
