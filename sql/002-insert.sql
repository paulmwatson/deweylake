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
    'AAA13805',
    'Nala',
    'Geldorf',
    'Nala Inc.',
    'Cape Town',
    'South Africa',
    '+27555123456',
    '+27555123451',
    'nala@inc.test',
    CURRENT_DATE,
    'https://nalainc.test/'
  );

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
    'ABCDFERT1234',
    'Drika',
    'Boshoff',
    'Drika Inc.',
    'Windhoek',
    'Namibia',
    '+264123456789',
    '+264123456719',
    'drika@namibia.test',
    CURRENT_DATE,
    'https://drika.test/'
  );

FROM
  glob('./db/metadata.ducklake.files/*');