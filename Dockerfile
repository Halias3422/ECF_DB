FROM mysql:8.0

ENV MYSQL_DATABASE=$MYSQL_DATABASE
ENV MYSQL_ROOT_PASSWORD=$MYSQL_ROOT_PASSWORD
ENV MYSQL_USER=$MYSQL_USER
ENV MYSQL_PASSWORD=$MYSQL_PASSWORD


COPY ./docker-entrypoint-initdb.d /docker-entrypoint-initdb.d/
COPY ./initDB.sql /docker-entrypoint-initdb.d/
