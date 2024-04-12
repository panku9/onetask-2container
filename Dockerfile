# Use the official Nginx image as the base image
FROM nginx:latest

# Set the working directory in the container
WORKDIR /var/www/html

# Install any dependencies required by Nginx
RUN apt-get update && apt-get install -y nginx

# Copy Nginx configuration file
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy Supervisor configuration
COPY ./nginx/supervisord.conf /etc/supervisor/conf.d/supervisord.conf


# Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf

# Expose port 80 for the Nginx server
EXPOSE 8081



