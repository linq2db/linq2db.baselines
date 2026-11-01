-- PostgreSQL.15 PostgreSQL12
SELECT
	p."Id",
	'Артикул ' || p."Sku"
FROM
	"ConcatProduct" p

-- PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

