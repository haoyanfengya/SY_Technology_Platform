#!/usr/bin/env bash

mysql -uroot -p$MYSQL_ROOT_PASSWORD << EOF

source /opt/sql/kjfwb.sql;

source /opt/sql/lims-sy-1005.sql;

source /opt/sql/qyjc_sy.sql;

source /opt/sql/tjpt.sql;