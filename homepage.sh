#!/bin/bash

# Update package list and install NGINX if not installed
sudo apt update -y
sudo apt install -y nginx

# Remove the default NGINX welcome page
sudo rm -f /var/www/html/index.nginx-debian.html

# Create the Homepage with links to Movie Page and Show Page
echo "<html>
<head>
  <title>Welcome to the Media Hub</title>
</head>
<body>
  <h1>Welcome to the Media Hub!</h1>
  <p>Select a page to explore:</p>
  <ul>
    <li><a href='/movies'>Go to Movie Page</a></li>
    <li><a href='/shows'>Go to Show Page</a></li>
  </ul>
</body>
</html>" | sudo tee /var/www/html/index.html

# Restart NGINX to apply changes
sudo systemctl restart nginx

# Ensure NGINX starts on boot
sudo systemctl enable nginx

echo "Homepage with Movie and Show links created successfully!"
