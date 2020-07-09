FROM adoptopenjdk/openjdk8:alpine-jre
RUN apk add --no-cache netcat-openbsd
ADD https://github.com/dhis2/dhis2-fhir-adapter/releases/download/1.1.0/dhis2-fhir-adapter.war ./
ADD https://github.com/eficode/wait-for/raw/master/wait-for ./
RUN chmod a+x ./wait-for
RUN mkdir -p /DHIS2_home/services/fhir-adapter
ENV DHIS2_HOME=/DHIS2_home
EXPOSE 8081
ENTRYPOINT ./wait-for dhis:8080 -t 900 -- java -jar ./dhis2-fhir-adapter.war
