-- YDB Ydb

SELECT
	i.Id as Id
FROM
	Tender i

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.Name as Name
FROM
	Tender t1

-- YDB Ydb

SELECT
	r.Id as Id
FROM
	Tender r
WHERE
	r.Id = Uuid('00000000-0000-0000-0000-000000000000')
LIMIT 1

-- YDB Ydb

SELECT
	i.Id as Id
FROM
	Tender i
LIMIT 1

