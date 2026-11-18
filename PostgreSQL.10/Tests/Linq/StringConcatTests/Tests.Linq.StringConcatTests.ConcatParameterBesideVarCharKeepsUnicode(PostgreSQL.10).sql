-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @suffix Text(3) -- String
SET     @suffix = 'Жук'

SELECT
	p."Id",
	p."Sku" || Coalesce(:suffix, ''),
	Coalesce(:suffix, '') || p."Sku" || Coalesce(:suffix, ''),
	p."Sku" || Coalesce(:suffix, '')
FROM
	"ConcatProduct" p

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

