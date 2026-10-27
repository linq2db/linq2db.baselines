-- PostgreSQL.13 PostgreSQL12
DECLARE @suffix Text(3) -- String
SET     @suffix = 'Жук'

SELECT
	p."Id"
FROM
	"ConcatProduct" p
WHERE
	(p."Sku" || Coalesce(:suffix, '')) IN ('A-100Щит', 'B-200Жук')

-- PostgreSQL.13 PostgreSQL12
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

