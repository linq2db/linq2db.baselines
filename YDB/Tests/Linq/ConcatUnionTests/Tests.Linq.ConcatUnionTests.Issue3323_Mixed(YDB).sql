-- YDB Ydb

INSERT INTO Issue3323Table
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
	Issue3323Table r
UNION ALL
SELECT
	r_1.Id + 1 as Id,
	r_1.Text as Text
FROM
	Issue3323Table r_1

-- YDB Ydb

SELECT
	r.Id + 1 as Id,
	r.Text as Text
FROM
	Issue3323Table r
UNION ALL
SELECT
	r_1.Id as Id,
	Coalesce(r_1.FirstName, ''u) || ' 'u || Coalesce(r_1.LastName, ''u) as Text
FROM
	Issue3323Table r_1

