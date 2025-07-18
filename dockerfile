# Use Nginx as base image
FROM nginx:alpine

# Copy static HTML content to Nginx default directory
COPY . /usr/share/nginx/html

# Expose port
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
