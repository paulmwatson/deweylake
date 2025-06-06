INSTALL 'ducklake';

LOAD 'ducklake';

ATTACH 'ducklake:./db/metadata.ducklake' AS deweylake;

CREATE TABLE deweylake.customers AS
SELECT
  *
FROM
  read_csv_auto('./customers.csv');

FROM
  glob('./db/metadata.ducklake.files/*');