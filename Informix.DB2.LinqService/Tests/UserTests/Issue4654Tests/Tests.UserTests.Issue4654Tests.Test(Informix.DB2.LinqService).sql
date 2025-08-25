BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	To_Char(c_1.Id),
	c_1.Name
FROM
	Issue4654Customer c_1
UNION
SELECT
	To_Char(o.Id),
	o.ProductName
FROM
	Issue4654Order o
UNION
SELECT
	To_Char(p.Id),
	p.Name
FROM
	Issue4654Product p

