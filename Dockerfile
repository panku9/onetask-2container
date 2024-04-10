# Use the official Apache base image
FROM httpd:latest AS apache

# Copy Apache custom configuration file to Apache configuration directory
COPY ./apache/httpd.conf /usr/local/apache2/conf/httpd.conf

# Expose port 8080 for Apache
EXPOSE 8080

# Start Apache service
CMD ["httpd", "-D", "FOREGROUND"]

# Use the official Nginx base image
FROM nginx:latest AS nginx

# Copy Nginx custom configuration file to Nginx configuration directory
COPY ./nginx/nginx.conf /etc/nginx/nginx.conf

# Expose port 8081 for Nginx
EXPOSE 8081

# Start Nginx service
CMD ["nginx", "-g", "daemon off;"]
