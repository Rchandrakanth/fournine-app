# Use the official Nginx Alpine image as the base for a lightweight, production-ready static server
FROM nginx:alpine

# Set the working directory inside the container to the Nginx HTML root
WORKDIR /usr/share/nginx/html

# Remove default nginx static files
RUN rm -rf ./*

# Copy the static website files into the container
COPY index.html .
COPY style.css .

# Expose port 80 to the host
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
