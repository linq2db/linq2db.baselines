-- PostgreSQL.9.3 PostgreSQL
SELECT
	p."Id",
	'Артикул ' || p."Sku"
FROM
	"ConcatProduct" p

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

