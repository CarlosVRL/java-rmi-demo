build:
	@ (cd src/main/java; javac *.java; ls *.class)

server:
	@ (cd src/main/java; start rmiregistry; java Server)

client:
	@ (cd src/main/java; java Client)
