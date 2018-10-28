FROM nginx:stable
COPY . /bin/
RUN chmod a+x /bin/joke.sh /bin/entrypoint.sh && \
          apt-get update && apt-get install -y wget && \
	  apt-get clean && \
	  apt-get remove --purge --auto-remove -y apt-transport-https ca-certificates && rm -rf /var/lib/apt/lists/*
ENTRYPOINT [ "/bin/bash", "-c", "/bin/entrypoint.sh" ]
CMD ["nginx", "-g", "daemon off;"]
