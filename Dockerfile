# Use official Nginx image
FROM nginx:alpine

# Copy website files to Nginx HTML directory
COPY . /usr/share/nginx/html

# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Add a new Nginx configuration file
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 8000 instead of 80 for Koyeb
EXPOSE 8000

# Start Nginx and make it listen on port 8000
CMD ["nginx", "-g", "daemon off;"]
