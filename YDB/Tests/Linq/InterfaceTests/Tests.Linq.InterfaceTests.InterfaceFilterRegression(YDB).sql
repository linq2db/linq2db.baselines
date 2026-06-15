-- YDB Ydb

SELECT
	t1.Id as Id
FROM
	TransactionLine t1
WHERE
	t1.Id = 2
LIMIT 2

-- YDB Ydb

SELECT
	t1.Id as Id
FROM
	TransactionLine t1
WHERE
	t1.Id = 2
LIMIT 2

-- YDB Ydb
DECLARE $UserId Int32
SET     $UserId = 2

SELECT
	x.Id as UserId
FROM
	TransactionLine x
WHERE
	x.Id = $UserId
LIMIT 2

-- YDB Ydb
DECLARE $UserId Int32
SET     $UserId = 2

SELECT
	x.Id as Id
FROM
	TransactionLine x
WHERE
	x.Id = $UserId
LIMIT 2

