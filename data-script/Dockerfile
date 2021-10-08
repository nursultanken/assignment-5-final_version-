FROM alpine
RUN apk update
RUN apk add mysql-client
WORKDIR /opt
COPY import.sh mydatabase.sql /opt/
RUN chmod +x /opt/import.sh
ENTRYPOINT ["sh", "-c", "./import.sh"]
