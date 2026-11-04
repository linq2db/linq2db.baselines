-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @suffix Varchar(3) -- String
SET     @suffix = 'Жук'

SELECT
	p."Id"
FROM
	"ConcatProduct" p
WHERE
	p."Title" = (p."Sku" || Coalesce(:suffix, ''))

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

