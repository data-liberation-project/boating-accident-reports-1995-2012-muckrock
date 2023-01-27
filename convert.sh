#!/bin/sh
set -e

echo "Extracting database from ZIP to temporary file ...";
MDB_FILE=$(mktemp);
unzip -p "data/raw/9-4-13_MR6354_RES.zip" "9-4-13 MR6354 RES/FOIA132930.accdb" > $MDB_FILE;

echo "Extracting schema from database file ..."
mdb-schema "$MDB_FILE" > data/converted/schema.txt;

TABLE_NAMES=$(mdb-tables "$MDB_FILE" --single-column);
echo "$TABLE_NAMES" | while IFS= read -r table; do
    echo "Converting to CSV: $table ...";
    mdb-export "$MDB_FILE" "$table" > data/converted/"$table".csv;
done
