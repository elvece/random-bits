#!/bin/sh
# to run -> sh db.sh <db_name>
psql -U postgres << END_OF_SCRIPT
DROP DATABASE $1;
CREATE DATABASE $1;
\q
END_OF_SCRIPT