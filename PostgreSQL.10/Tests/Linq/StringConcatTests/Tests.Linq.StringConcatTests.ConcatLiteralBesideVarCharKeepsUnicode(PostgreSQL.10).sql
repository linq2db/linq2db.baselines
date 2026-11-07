-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	p."Id",
	'Артикул ' || p."Sku"
FROM
	"ConcatProduct" p

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

