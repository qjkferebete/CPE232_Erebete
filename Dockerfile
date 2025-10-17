# Use the official Nginx image as the base
FROM nginx:latest

# Remove the default Nginx index.html file
RUN rm /usr/share/nginx/html/index.html

# Copy the custom index.html file into the Nginx web directory
COPY index.html /usr/share/nginx/html/

# The Nginx image is configured to run Nginx automatically
# No need for a CMD instruction unless you want to override the default.
