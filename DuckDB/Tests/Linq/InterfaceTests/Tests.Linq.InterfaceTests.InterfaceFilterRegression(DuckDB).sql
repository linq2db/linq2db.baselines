-- DuckDB

SELECT
	t1.Id
FROM
	TransactionLine t1
WHERE
	t1.Id = 2
LIMIT 2

-- DuckDB

SELECT
	t1.Id
FROM
	TransactionLine t1
WHERE
	t1.Id = 2
LIMIT 2

-- DuckDB
DECLARE $UserId  -- Int32
SET     $UserId = 2

SELECT
	x.Id
FROM
	TransactionLine x
WHERE
	x.Id = CAST($UserId AS INTEGER)
LIMIT 2

-- DuckDB
DECLARE $UserId  -- Int32
SET     $UserId = 2

SELECT
	x.Id
FROM
	TransactionLine x
WHERE
	x.Id = CAST($UserId AS INTEGER)
LIMIT 2

