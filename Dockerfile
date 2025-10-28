# Use lightweight NGINX image
FROM nginx:alpine

# Copy your HTML files into the default nginx web directory
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
