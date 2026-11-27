-- YDB Ydb
SELECT
	Unwrap(CAST(c_1.Id AS Text)) as Id,
	c_1.Name as Name
FROM
	UnionSourceCustomer c_1
UNION
SELECT
	Unwrap(CAST(o.Id AS Text)) as Id,
	o.ProductName as Name
FROM
	UnionSourceOrder o
UNION
SELECT
	Unwrap(CAST(p.Id AS Text)) as Id,
	p.Name as Name
FROM
	UnionSourceProduct p

