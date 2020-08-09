FROM openjdk:8-jdk

EXPOSE 1099

ADD src/main/java/*.class /app/

WORKDIR /app

CMD echo "Starting the RMI Registry..." && \
	(rmiregistry &) && \
	sleep 5 && \
	java Server
