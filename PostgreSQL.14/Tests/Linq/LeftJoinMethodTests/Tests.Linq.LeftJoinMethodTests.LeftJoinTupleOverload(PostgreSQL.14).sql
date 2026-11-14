-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t."Name",
	o."Name"
FROM
	"Customer" t
		LEFT JOIN "Order" o ON t."Id" = o."CustomerId"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."Name"
FROM
	"Customer" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Name"
FROM
	"Order" t1

