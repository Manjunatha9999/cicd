FROM nginx:latest
EXPOSE 80
COPY ./index.html /usr/share/nginx/html/index.html
CMD ["nginx", "-g", "daemon off;"]
