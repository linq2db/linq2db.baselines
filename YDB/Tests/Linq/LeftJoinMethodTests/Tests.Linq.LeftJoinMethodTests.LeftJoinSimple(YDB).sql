-- YDB Ydb

SELECT
	c_1.Name as Name,
	o.Name as OrderName
FROM
	Customer c_1
		LEFT JOIN `Order` o ON c_1.Id = o.CustomerId

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

