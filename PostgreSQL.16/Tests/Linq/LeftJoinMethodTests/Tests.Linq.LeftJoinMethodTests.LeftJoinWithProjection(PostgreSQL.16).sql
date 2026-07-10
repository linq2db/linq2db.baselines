-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	x."Name",
	o."Id"
FROM
	"Customer" x
		LEFT JOIN "Order" o ON x."Id" = o."CustomerId"

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."Name"
FROM
	"Customer" t1

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12

SELECT
	t1."Id",
	t1."CustomerId",
	t1."Name"
FROM
	"Order" t1

