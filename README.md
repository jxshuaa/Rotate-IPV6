<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body>

<h1>Rotate IPv6 Script</h1>
<p>This project provides a simple script that allows you to rotate your IPv6 address every time it's executed. While it may seem trivial, it can be useful for various networking tasks.</p>

<p>Before doing anything please get your Base IPv6 address and change it where it says CHANGEME.</p>

<h2>Configuration Instructions</h2>
<p>To set up the script on your system, follow these steps:</p>

<ol>
    <li><strong>Clone the Repository:</strong>
        <pre><code>git clone https://github.com/jxshuaa/Rotate-IPV6.git</code></pre>
    </li>
    <li><strong>Navigate to the Directory:</strong>
        <pre><code>cd Rotate-IPV6</code></pre>
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
