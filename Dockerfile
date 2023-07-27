# The Dockerfile is used to build images
# The Dockerfile uses the docker build command
# It describe how to create custom NGinx image that hosts html files
# The Dockerfile is like a recipe that describes the steps the docker build command must follow to cook up a new, custom Docker image.

# Use the official Nginx image as the base image
FROM nginx

# Copy the Nginx configuration file to enable caching
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY proxy_params /etc/nginx/proxy_params
# COPY /data/images /usr/share/nginx/html/images
# COPY /data/www /usr/share/nginx/html/www

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]