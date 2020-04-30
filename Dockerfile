FROM nginx:alpine
RUN apk add --no-cache nginx && apk add bash
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
ADD index.html /usr/share/nginx/html/
EXPOSE 80
CMD [ "nginx" ]