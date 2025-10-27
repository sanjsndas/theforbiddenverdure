# Use a lightweight Nginx image
FROM nginx:alpine

# Copy all website files to Nginx's public directory
COPY . /usr/share/nginx/html

# Expose port 80 for Koyeb
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
