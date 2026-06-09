-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.FirstName as FirstName,
	t1.LastName as LastName,
	Coalesce(t1.FirstName, ''u) || ' 'u || Coalesce(t1.LastName, ''u) as FullName
FROM
	Issue2434Table t1
ORDER BY
	Coalesce(t1.FirstName, ''u) || ' 'u || Coalesce(t1.LastName, ''u)

