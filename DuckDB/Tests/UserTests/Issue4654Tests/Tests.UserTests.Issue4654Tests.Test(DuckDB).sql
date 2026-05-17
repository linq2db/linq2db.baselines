-- DuckDB

SELECT
	CAST(c_1.Id AS VARCHAR),
	c_1.Name
FROM
	Issue4654Customer c_1
UNION
SELECT
	CAST(o.Id AS VARCHAR),
	o.ProductName
FROM
	Issue4654Order o
UNION
SELECT
	CAST(p.Id AS VARCHAR),
	p.Name
FROM
	Issue4654Product p

