FROM docker.io/library/nginx:alpine

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx/default.conf /etc/nginx/conf.d

COPY build /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]