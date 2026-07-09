-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	c_1."Name",
	o."Name"
FROM
	"Customer" c_1
		LEFT JOIN "Order" o ON c_1."Id" = o."CustomerId"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Name"
FROM
	"Customer" t1

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."CustomerId",
	t1."Name"
FROM
	"Order" t1

