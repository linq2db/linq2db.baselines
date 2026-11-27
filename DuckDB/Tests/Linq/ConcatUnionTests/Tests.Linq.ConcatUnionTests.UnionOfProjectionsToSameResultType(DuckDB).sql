-- DuckDB
SELECT
	CAST(c_1.Id AS VARCHAR),
	c_1.Name
FROM
	UnionSourceCustomer c_1
UNION
SELECT
	CAST(o.Id AS VARCHAR),
	o.ProductName
FROM
	UnionSourceOrder o
UNION
SELECT
	CAST(p.Id AS VARCHAR),
	p.Name
FROM
	UnionSourceProduct p

