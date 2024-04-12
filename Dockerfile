# Use the official Nginx image as the base image
FROM nginx:latest

# Copy custom Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for the Nginx server
EXPOSE 8081

# Command to start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]



