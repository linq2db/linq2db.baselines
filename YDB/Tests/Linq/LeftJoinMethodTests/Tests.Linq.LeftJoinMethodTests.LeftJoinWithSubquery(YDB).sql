-- YDB Ydb
DECLARE $take Int32
SET     $take = 10

SELECT
	c_2.Id as Id,
	o.Id as OrderId
FROM
	(
		SELECT
			c_1.Id as Id
		FROM
			Customer c_1
		WHERE
			c_1.Id > 0
		LIMIT $take
	) c_2
		LEFT JOIN `Order` o ON c_2.Id = o.CustomerId

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

