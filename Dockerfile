# Use the official Nginx image as the base image
FROM nginx:alpine

# Update the package list (apt-get update is correct, but we're using Alpine, so it's not needed here)
# RUN apt-get update  # This is not necessary for Alpine-based images

# Copy the 'welcom.html' and 'style.css' from your local directory to the container
COPY welcom.html /usr/share/nginx/html/
COPY style.css /usr/share/nginx/html/

# Set the working directory (optional in this case, since we're copying files directly to Nginx's default HTML directory)
WORKDIR /usr/share/nginx/html

# Expose port 80 to communicate with the outside world
EXPOSE 80

# Nginx will automatically serve the files, no need for CMD in this case, as Nginx is already the default entrypoint
CMD ["nginx", "-g", "daemon off;"]
