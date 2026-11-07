-- YDB Ydb
SELECT
	o.Id as Id,
	o.CustomerId as CustomerId
FROM
	RegionalCustomer c_1
		INNER JOIN RegionalOrder o ON c_1.Id = o.CustomerId
WHERE
	1 = 0

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.RegionId as RegionId
FROM
	RegionalCustomer t1

-- YDB Ydb
SELECT
	t1.Id as Id,
	t1.CustomerId as CustomerId
FROM
	RegionalOrder t1

