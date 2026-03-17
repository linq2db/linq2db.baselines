-- ClickHouse.Driver ClickHouse

SELECT
	toString(c_1.Id) as Id,
	c_1.Name
FROM
	Issue4654Customer c_1
UNION DISTINCT
SELECT
	toString(o.Id) as Id,
	o.ProductName as Name
FROM
	Issue4654Order o
UNION DISTINCT
SELECT
	toString(p.Id) as Id,
	p.Name as Name
FROM
	Issue4654Product p

