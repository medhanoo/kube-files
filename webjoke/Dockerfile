FROM nginx:stable-alpine
COPY . /bin/
RUN chmod a+x /bin/joke.sh /bin/entrypoint.sh
ENTRYPOINT [ "/bin/sh", "-c", "/bin/entrypoint.sh" ]
CMD ["nginx", "-g", "daemon off;"]
