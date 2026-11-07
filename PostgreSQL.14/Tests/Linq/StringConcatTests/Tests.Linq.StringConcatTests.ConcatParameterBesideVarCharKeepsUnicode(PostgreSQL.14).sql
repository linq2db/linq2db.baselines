-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @suffix Text(3) -- String
SET     @suffix = 'Жук'

SELECT
	p."Id",
	p."Sku" || Coalesce(:suffix, ''),
	Coalesce(:suffix, '') || p."Sku" || Coalesce(:suffix, ''),
	p."Sku" || Coalesce(:suffix, '')
FROM
	"ConcatProduct" p

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

