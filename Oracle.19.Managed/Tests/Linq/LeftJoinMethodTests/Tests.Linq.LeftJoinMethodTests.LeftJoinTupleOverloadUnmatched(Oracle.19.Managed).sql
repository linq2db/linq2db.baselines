-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t."Name"
FROM
	"Customer" t
		LEFT JOIN "Order" o ON t."Id" = o."CustomerId"
WHERE
	o."Id" IS NULL

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."Name"
FROM
	"Customer" t1

-- Oracle.19.Managed Oracle.Managed Oracle12
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Name"
FROM
	"Order" t1

