FROM nginx:alpine

# Remove default nginx files
RUN rm -rf /usr/share/nginx/html/*

# Copy website files
COPY . /usr/share/nginx/html

# Expose Render's port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]




