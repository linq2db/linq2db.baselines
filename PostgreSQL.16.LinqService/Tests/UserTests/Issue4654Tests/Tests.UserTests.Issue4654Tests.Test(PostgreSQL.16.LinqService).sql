BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	c_1."Id"::text,
	c_1."Name"
FROM
	"Issue4654Customer" c_1
UNION
SELECT
	o."Id"::text,
	o."ProductName"
FROM
	"Issue4654Order" o
UNION
SELECT
	p."Id"::text,
	p."Name"
FROM
	"Issue4654Product" p

