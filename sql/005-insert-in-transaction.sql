BEGIN TRANSACTION;

FROM
  ducklake_snapshots('deweylake');

INSERT INTO
  deweylake.customers(
    "Customer Id",
    "First Name",
    "Last Name",
    Company,
    City,
    Country,
    "Phone 1",
    "Phone 2",
    Email,
    "Subscription Date",
    Website
  )
VALUES
  (
    'AAA13806',
    'Sabrina',
    'Watson',
    'Sabrina Inc.',
    'Cape Town',
    'South Africa',
    '+27555121222',
    '+27555112323',
    'sabrina@inc.test',
    CURRENT_DATE,
    'https://sabrinainc.test/'
  );

FROM
  ducklake_snapshots('deweylake');

COMMIT;

FROM
  ducklake_snapshots('deweylake');