-- YDB Ydb
INSERT INTO CalculatedColumnSetTable
(
	Id,
	FirstName,
	LastName,
	Text
)
VALUES
(
	1,
	'one'u,
	'two'u,
	'text'u
)

-- YDB Ydb
SELECT
	r.Id as Id,
	Coalesce(r.FirstName, ''u) || ' 'u || Coalesce(r.LastName, ''u) as Text
FROM
	CalculatedColumnSetTable r
UNION ALL
SELECT
	r_1.Id + 1 as Id,
	r_1.Text as Text
FROM
	CalculatedColumnSetTable r_1

-- YDB Ydb
SELECT
	r.Id + 1 as Id,
	r.Text as Text
FROM
	CalculatedColumnSetTable r
UNION ALL
SELECT
	r_1.Id as Id,
	Coalesce(r_1.FirstName, ''u) || ' 'u || Coalesce(r_1.LastName, ''u) as Text
FROM
	CalculatedColumnSetTable r_1

