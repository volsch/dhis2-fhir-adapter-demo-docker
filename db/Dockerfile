FROM mdillon/postgis:10-alpine
ADD https://github.com/dhis2/dhis2-demo-db/raw/master/sierra-leone/2.32/dhis2-db-sierra-leone.sql.gz ./docker-entrypoint-initdb.d/init.sql.gz
RUN chmod a+r ./docker-entrypoint-initdb.d/init.sql.gz
ADD x-fhir.sh ./docker-entrypoint-initdb.d
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 5432
CMD ["postgres", "-c", "max_locks_per_transaction=100"]

