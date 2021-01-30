FROM openjdk:11-jdk
MAINTAINER George { g@g.com}
RUN apt-get update
RUN apt-get install -y maven
COPY RiskMeter/pom.xml /usr/local/service/pom.xml
COPY RiskMeter/src /usr/local/service/src
WORKDIR /usr/local/service
RUN mvn package
CMD ["java","-cp","./RiskMeter/target/RiskMeter-1.0-SNAPSHOT.jar","com.uregina.app.App"]
