-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	c_1."Name",
	o."Name"
FROM
	"Customer" c_1
		LEFT JOIN "Order" o ON c_1."Id" = o."CustomerId"
WHERE
	c_1."Id" >= 2

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Name"
FROM
	"Customer" t1

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."CustomerId",
	t1."Name"
FROM
	"Order" t1

