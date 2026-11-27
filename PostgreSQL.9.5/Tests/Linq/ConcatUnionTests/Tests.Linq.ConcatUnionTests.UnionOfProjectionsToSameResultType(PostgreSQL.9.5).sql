-- PostgreSQL.9.5 PostgreSQL
SELECT
	c_1."Id"::text,
	c_1."Name"
FROM
	"UnionSourceCustomer" c_1
UNION
SELECT
	o."Id"::text,
	o."ProductName"
FROM
	"UnionSourceOrder" o
UNION
SELECT
	p."Id"::text,
	p."Name"
FROM
	"UnionSourceProduct" p

