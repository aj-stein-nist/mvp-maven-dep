ARG MAVEN_VERSION=sha256:bed43e35f3e5f013670d4d7d247612de5ac82355b0c58c244005c532dfe6a1d7

FROM maven@${MAVEN_VERSION}

COPY ./pom.xml /usr/local/src

RUN (cd /usr/local/src && mvn dependency:resolve)