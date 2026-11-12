-- YDB Ydb
SELECT
	t.Name as Name
FROM
	Customer t
		LEFT JOIN `Order` o ON t.Id = o.CustomerId
WHERE
	o.Id IS NULL

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.Name as Name
FROM
	Customer t1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CustomerId as CustomerId,
	t1.Name as Name
FROM
	`Order` t1

