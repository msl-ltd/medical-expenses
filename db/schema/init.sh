#!/bin/bash

/usr/bin/psql -p 5432 -U postgres -v SCHEMA_DIR=$(cd $(dirname $0); pwd)  << _EOF

\i :SCHEMA_DIR/ddl-m-class.sql
\i :SCHEMA_DIR/dml-m-class.sql
\i :SCHEMA_DIR/ddl-t_payee.sql
\i :SCHEMA_DIR/ddl-t-expense.sql

_EOF
