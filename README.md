# DeweyLake DuckLack DuckDB Example

DuckDB DuckLake lakehouse examples with a 2 million row CSV.

Download customers CSV up to 2 million rows from:
https://github.com/datablist/sample-csv-files?tab=readme-ov-file

Or use example with only 25 rows:
```
cp customers.example.csv
```

Now initialise DuckDB with DuckLake extension creating a table from `./customers.csv`. Warning this command deletes `./db` if you run it again:
```
yarn db:init
```

Now run some commands in the open DuckDB CLI.

Delete some rows and watch the new parquet file in `./db/metadata.ducklake.files` appear:
```
.read ./sql/001-delete.sql
```

Insert rows:
```
.read ./sql/002-insert.sql
```

View all available snapshots:
```
.read ./sql/003-snapshots.sql
```

And view table `customers` versions noting the different row counts:
```
.read ./sql/004-snapshot-versions.sql
```

Insert rows in a transaction and note snapshots don't change until you `commit`:
```
.read ./sql/005-insert-in-transaction.sql
```

Now a fairly complex query:
```
.read ./sql/006-complex-query.sql
```