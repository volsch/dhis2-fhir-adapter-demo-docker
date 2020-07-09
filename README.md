# DHIS2 FHIR Adapter Demo on Docker
This repository contains a setup for
[DHIS2 FHIR Adapter](https://github.com/dhis2/dhis2-fhir-adapter) 1.1
that is connected to [DHIS Core](https://www.dhis2.org/) 2.32.4 with
Sierra Leone demo database.

In order to run the containers, Docker 17.09.0 or later must have
been installed. Then you can start all containers with the following
command that must be executed in the same directory in which this README
file is located:

    docker-compose up

After the containers have been started, DHIS2 web front can be accessed
with the following URL from a local web browser:

http://localhost:18080/

To access the list of FHIR Locations (DHIS2 Organisation Units), the
following URL can be used:

http://localhost:18081/fhir/r4/default/Location/_search?_format=json

When you are prompted for a username and password, you can use `admin`
as username and `district` as password.
