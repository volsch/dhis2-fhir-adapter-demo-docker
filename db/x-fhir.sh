#!/bin/sh
set -e

# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

psql -v ON_ERROR_STOP=1 --dbname="$POSTGRES_DB" <<-EOSQL
CREATE USER "dhis-fhir" WITH PASSWORD 'dhis-fhir' NOSUPERUSER NOCREATEDB NOCREATEROLE;
CREATE DATABASE "dhis2-fhir" WITH OWNER "dhis-fhir";
EOSQL

psql -v ON_ERROR_STOP=1 --dbname="dhis2-fhir" <<-EOSQL
CREATE EXTENSION "uuid-ossp";
EOSQL
