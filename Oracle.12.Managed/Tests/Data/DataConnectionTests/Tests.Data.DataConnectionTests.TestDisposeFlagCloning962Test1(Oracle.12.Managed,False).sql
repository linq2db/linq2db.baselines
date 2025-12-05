-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	m_1."CategoryID",
	d."ProductID",
	d."ProductName",
	d."CategoryID",
	d."QuantityPerUnit"
FROM
	"Categories" m_1
		INNER JOIN "Products" d ON m_1."CategoryID" = d."CategoryID"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."CategoryID",
	t1."CategoryName",
	t1."Description"
FROM
	"Categories" t1

