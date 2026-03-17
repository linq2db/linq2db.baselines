-- Informix.DB2 Informix

SELECT
	x.Name,
	o.Id
FROM
	Customer x
		LEFT JOIN "Order" o ON x.Id = o.CustomerId

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.Name
FROM
	Customer t1

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.CustomerId,
	t1.Name
FROM
	"Order" t1

