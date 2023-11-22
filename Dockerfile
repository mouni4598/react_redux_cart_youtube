# Use an official Nginx image as the base image
FROM nginx:latest

# Remove the default Nginx configuration
RUN rm -rf /etc/nginx/conf.d/default.conf

# Copy the built React app files into the Nginx HTML directory
COPY build/ /usr/share/nginx/html

# Copy custom Nginx configuration (if needed)
# COPY nginx-custom.conf /etc/nginx/conf.d/

# Expose port 80 to the outside world
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
