DELETE FROM deweylake.customers WHERE Index IN (SELECT Index FROM deweylake.customers LIMIT 10);
FROM glob('./db/metadata.ducklake.files/*');