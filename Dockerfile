FROM openjdk:18-alpine
RUN apk add --no-cache ca-certificates tzdata ttf-dejavu
RUN mkdir -p /opt/sym
COPY target/symphony /opt/sym
COPY src/main/resources/docker/* /opt/sym/
RUN ls /opt/sym/

WORKDIR /opt/sym/
ENV TZ=Asia/Shanghai
EXPOSE 8080
ENTRYPOINT [ "java", "-cp", "lib/*:.", "org.b3log.symphony.Server" ]
