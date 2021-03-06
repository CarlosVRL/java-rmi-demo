image = java-rmi-demo

build:
	@ (cd src/main/java; javac *.java; ls *.class)

builddocker: build
	@ docker build --tag $(image) .

start:
	@ docker run --rm -d -p 1099:1099 --name $(image)-dev $(image)

rmiwin:
	@ start rmiregistry

rmilin:
	@ rmiregistry

server:
	@ (cd src/main/java; java Server)

client:
	@ (cd src/main/java; java Client)
