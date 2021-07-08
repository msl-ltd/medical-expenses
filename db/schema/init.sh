#!/bin/bash

/usr/bin/psql -p 5432 -U postgres  << _EOF

\i ./ddl-m-class.sql
\i ./dml-m-class.sql
\i ./ddl-t_payee.sql
\i ./ddl-t-expense.sql

_EOF
