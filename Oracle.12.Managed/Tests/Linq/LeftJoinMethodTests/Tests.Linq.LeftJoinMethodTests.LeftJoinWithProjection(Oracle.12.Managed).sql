-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	x."Name",
	o."Id"
FROM
	"Customer" x
		LEFT JOIN "Order" o ON x."Id" = o."CustomerId"

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Customer" t1

-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t1."Id",
	t1."CustomerId",
	t1."Name"
FROM
	"Order" t1

