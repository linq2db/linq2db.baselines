-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
DECLARE @suffix Varchar(3) -- String
SET     @suffix = 'Жук'

SELECT
	p."Id"
FROM
	"ConcatProduct" p
WHERE
	(p."Sku" || Coalesce(:suffix, '')) = p."Title"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

