-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t."Name",
	o."Name"
FROM
	"Customer" t
		LEFT JOIN "Order" o ON t."Id" = o."CustomerId"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Name"
FROM
	"Customer" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."CustomerId",
	t1."Name"
FROM
	"Order" t1

