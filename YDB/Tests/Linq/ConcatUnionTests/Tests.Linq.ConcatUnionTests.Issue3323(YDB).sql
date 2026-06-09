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
	t1.Id as Id,
	t1.Text as Text,
	Coalesce(t1.FirstName, ''u) || ' 'u || Coalesce(t1.LastName, ''u) as FullName
FROM
	Issue3323Table t1
UNION ALL
SELECT
	t2.Id as Id,
	t2.Text as Text,
	Coalesce(t2.FirstName, ''u) || ' 'u || Coalesce(t2.LastName, ''u) as FullName
FROM
	Issue3323Table t2

