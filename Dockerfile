FROM openjdk:8
MAINTAINER Bogdan Suciu <bogdan.suciu@yopeso.com>

VOLUME /tmp

ADD ./target/spring-boot-sample.jar spring-boot-sample.jar

RUN bash -c 'touch /spring-boot-sample.jar'

EXPOSE 8080 9009

ENTRYPOINT ["java", "-Xdebug", "-agentlib:jdwp=transport=dt_socket,address=9009,server=y,suspend=n", "-Djava.security.egd=file:/dev/./urandom","-jar","/spring-boot-sample.jar"]