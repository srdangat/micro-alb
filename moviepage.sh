#!/bin/bash

# Update package list and install NGINX if not installed
sudo apt update -y
sudo apt install -y nginx

# Create a directory for the Movie page
sudo mkdir -p /var/www/html/movies

# Create the Movie Page (index.html)
echo "<html>
<head>
  <title>Movie Page</title>
</head>
<body>
  <h1>Welcome to the Movie Page!</h1>
  <p>Here are some of the latest and most popular movies:</p>
  <ul>
    <li>Movie 1: The Dark Knight</li>
    <li>Movie 2: Inception</li>
    <li>Movie 3: Interstellar</li>
    <li>Movie 4: Avengers: Endgame</li>
    <li>Movie 5: The Matrix</li>
  </ul>
  <p><a href='/'>Back to Homepage</a></p>
</body>
</html>" | sudo tee /var/www/html/movies/index.html

# Restart NGINX to apply changes
sudo systemctl restart nginx

# Ensure NGINX starts on boot
sudo systemctl enable nginx

echo "Movie Page created successfully!"
