FROM alpine
RUN apk add --no-cache nginx
COPY index.html /var/www/html/index.html
CMD ["nginx", "-g", "daemon off;"]
