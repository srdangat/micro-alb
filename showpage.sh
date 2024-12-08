#!/bin/bash

# Update package list and install NGINX if not installed
sudo apt update -y
sudo apt install -y nginx

# Create a directory for the Show page
sudo mkdir -p /var/www/html/shows

# Create the Show Page (index.html)
echo "<html>
<head>
  <title>Show Page</title>
</head>
<body>
  <h1>Welcome to the Show Page!</h1>
  <p>Here are some of the most popular TV shows:</p>
  <ul>
    <li>Show 1: Breaking Bad</li>
    <li>Show 2: Game of Thrones</li>
    <li>Show 3: Stranger Things</li>
    <li>Show 4: The Crown</li>
    <li>Show 5: The Mandalorian</li>
  </ul>
  <p><a href='/'>Back to Homepage</a></p>
</body>
</html>" | sudo tee /var/www/html/shows/index.html

# Restart NGINX to apply changes
sudo systemctl restart nginx

# Ensure NGINX starts on boot
sudo systemctl enable nginx

echo "Show Page created successfully!"
