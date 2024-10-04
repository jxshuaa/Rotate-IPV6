<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rotate IPv6 Script</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            line-height: 1.6;
            padding: 20px;
        }
        h1 {
            color: #333;
        }
        h2 {
            color: #444;
        }
        pre {
            background: #f4f4f4;
            padding: 10px;
            border-left: 3px solid #ccc;
        }
        code {
            background: #eef;
            padding: 2px 4px;
            border-radius: 3px;
        }
    </style>
</head>
<body>

<h1>Rotate IPv6 Script</h1>
<p>This project provides a simple script that allows you to rotate your IPv6 address every time it's executed. While it may seem trivial, it can be useful for various networking tasks.</p>

<h2>Configuration Instructions</h2>
<p>To set up the script on your system, follow these steps:</p>

<ol>
    <li><strong>Clone the Repository:</strong>
        <pre><code>git clone https://github.com/yourusername/Rotate-IPV6.git</code></pre>
    </li>
    <li><strong>Navigate to the Directory:</strong>
        <pre><code>cd Rotate-IPV6</code></pre>
    </li>
    <li><strong>Create the Rotation Script:</strong>
        <pre><code>nano rotate_ipv6.sh</code></pre>
        <p>Copy and paste the following code into the file:</p>
        <pre><code>#!/bin/bash

INTERFACE="eth0"  # Replace with your actual interface name
BASE_IP="2604:f440:1::2"  # Base of your /96 block

# Define a list of specific addresses to rotate through
ADDRESSES=(
    "${BASE_IP}:0"
    "${BASE_IP}:1"
    "${BASE_IP}:2"
    "${BASE_IP}:3"
    "${BASE_IP}:4"
    "${BASE_IP}:5"
    "${BASE_IP}:6"
    "${BASE_IP}:7"
    "${BASE_IP}:8"
    "${BASE_IP}:9"
    "${BASE_IP}:a"
    "${BASE_IP}:b"
    "${BASE_IP}:c"
    "${BASE_IP}:d"
    "${BASE_IP}:e"
    "${BASE_IP}:f"
    "${BASE_IP}:0:a"
)

# Pick a random address from the list
RANDOM_IP=${ADDRESSES[RANDOM % ${#ADDRESSES[@]}]}

# Assign the new IP address to the interface
ip -6 addr flush dev "$INTERFACE"  # Remove existing IPv6 addresses
ip -6 addr add "$RANDOM_IP/96" dev "$INTERFACE"  # Add the new address

echo "Changed IPv6 to $RANDOM_IP"</code></pre>
        <p>Save the file and exit (Ctrl + O, Enter, Ctrl + X).</p>
    </li>
    <li><strong>Make the Script Executable:</strong>
        <pre><code>chmod +x rotate_ipv6.sh</code></pre>
    </li>
</ol>

<h2>Scheduling the Script with Crontab</h2>
<p>If you want to run this script at regular intervals, you can set it up with cron:</p>

<ol>
    <li><strong>Open the Crontab Configuration:</strong>
        <pre><code>crontab -e</code></pre>
    </li>
    <li><strong>Add a New Cron Job:</strong>
        <p>To run the script every minute, add the following line:</p>
        <pre><code>* * * * * /path/to/Rotate-IPV6/rotate_ipv6.sh</code></pre>
        <p>Make sure to replace <code>/path/to/Rotate-IPV6/</code> with the actual path to your script.</p>
    </li>
    <li><strong>Save and Exit:</strong>
        <p>Save the changes and exit the editor.</p>
    </li>
</ol>

<h2>Previewing Your IPv6 Address</h2>
<p>After running the script (or waiting for it to run via cron), you can check your current IPv6 address using the following command:</p>
<pre><code>ip -6 addr show eth0</code></pre>
<p>Replace <code>eth0</code> with your actual interface name if necessary.</p>

<h2>Conclusion</h2>
<p>This script is a straightforward way to rotate your IPv6 address. Feel free to customize the address list as needed!</p>

</body>
</html>
