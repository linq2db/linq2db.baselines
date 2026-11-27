-- ClickHouse.Driver ClickHouse
SELECT
	toString(c_1.Id) as Id,
	c_1.Name
FROM
	UnionSourceCustomer c_1
UNION DISTINCT
SELECT
	toString(o.Id) as Id,
	o.ProductName as Name
FROM
	UnionSourceOrder o
UNION DISTINCT
SELECT
	toString(p.Id) as Id,
	p.Name as Name
FROM
	UnionSourceProduct p

