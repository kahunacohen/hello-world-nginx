FROM nginx
RUN apt-get update && \
  apt-get install -y vim
RUN rm /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/conf.d

# Copy certs for https
# key
#COPY SSL/mytzedakah.com.key /etc/nginx/ssl/mytzedakah.com.key

# cert
#COPY SSL/mytzedakah.com.chained.crt /etc/nginx/ssl/mytzedakah.com.chained.crt

#CMD ls -l /etc/nginx/ssl
#CMD chmod -R 600 /etc/nginx/ssl/
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
