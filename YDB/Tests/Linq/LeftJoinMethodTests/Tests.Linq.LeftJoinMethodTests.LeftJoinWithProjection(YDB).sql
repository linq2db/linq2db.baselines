-- YDB Ydb

SELECT
	x.Name as Name,
	o.Id as Id
FROM
	Customer x
		LEFT JOIN `Order` o ON x.Id = o.CustomerId

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

