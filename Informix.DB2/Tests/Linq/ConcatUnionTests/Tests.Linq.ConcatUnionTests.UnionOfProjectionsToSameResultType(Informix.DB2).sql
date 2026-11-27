-- Informix.DB2 Informix
SELECT
	To_Char(c_1.Id),
	c_1.Name
FROM
	UnionSourceCustomer c_1
UNION
SELECT
	To_Char(o.Id),
	o.ProductName
FROM
	UnionSourceOrder o
UNION
SELECT
	To_Char(p.Id),
	p.Name
FROM
	UnionSourceProduct p

