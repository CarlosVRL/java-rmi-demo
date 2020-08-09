FROM openjdk:8-jdk

CMD echo "Starting the RMI Registry..." && \
	rmiregistry
