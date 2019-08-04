FROM alpine/git
WORKDIR /Simplilearn
RUN git clone https://github.com/vikasjain0106/assignment-one.git

FROM maven:3.5-jdk-8-alpine
WORKDIR /Simplilearn/assignment-one
COPY --from=0 /Simplilearn/assignment-one /Simplilearn/assignment-one
RUN echo $JAVA_HOME && \
    echo $MAVEN_HOME && \
    mvn clean install

