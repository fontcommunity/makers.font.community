#!/bin/bash
PASSWORD=
HOST=localhost
USER=root
DATABASE=fontadd
DB_FILE=sql/dump.sql
DB_GZ_FILE=sql/dump.sql.gz

EXCLUDED_TABLES=(
cache_bootstrap
cache_config
cache_container
cache_data
cache_default
cache_discovery
cache_entity
cache_menu
cache_render
cache_rest
cache_toolbar
sessions
watchdog
)

IGNORED_TABLES_STRING=''
for TABLE in "${EXCLUDED_TABLES[@]}"
do :
   IGNORED_TABLES_STRING+=" --ignore-table=${DATABASE}.${TABLE}"
done

echo "Dump structure"
mysqldump --host=${HOST} --user=${USER} --password=${PASSWORD} --single-transaction --no-data --routines ${DATABASE} > ${DB_FILE}

echo "Dump content"
mysqldump --host=${HOST} --user=${USER} --password=${PASSWORD} ${DATABASE} --no-create-info --skip-triggers ${IGNORED_TABLES_STRING} >> ${DB_FILE}

echo "zipping"
gzip -f ${DB_FILE} > ${DB_GZ_FILE}