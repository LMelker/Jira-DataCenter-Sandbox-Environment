#!/bin/bash
set -e
export PGPASSWORD=$POSTGRES_PASSWORD;
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
  CREATE
	USER $APP_DB_USER
	WITH
		PASSWORD '$APP_DB_PASS';
  CREATE
	DATABASE $APP_DB_NAME
	WITH 
		OWNER = $APP_DB_USER
		ENCODING 'UNICODE'
		LC_COLLATE 'C.UTF-8'
		LC_CTYPE 'C.UTF-8'
    	TEMPLATE template0;
  GRANT ALL PRIVILEGES ON DATABASE $APP_DB_NAME TO $APP_DB_USER;
  COMMIT;
EOSQL


