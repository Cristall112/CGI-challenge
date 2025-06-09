FROM nginx:alpine

# Copy custom HTML
COPY html/ /usr/share/nginx/html

# Copy custom nginx config
COPY nginx/default.conf /etc/nginx/conf.d/default.conf

# Copy SSL cert and key
COPY ssl/nginx-selfsigned.crt /etc/ssl/certs/
COPY ssl/nginx-selfsigned.key /etc/ssl/private/

EXPOSE 80
EXPOSE 443

