-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @suffix Text(3) -- String
SET     @suffix = 'Жук'

SELECT
	p."Id"
FROM
	"ConcatProduct" p
WHERE
	(p."Sku" || Coalesce(:suffix, '')) IN ('A-100Жук', 'B-200Щит')

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @suffix Text(3) -- String
SET     @suffix = 'Жук'

SELECT
	p."Id"
FROM
	"ConcatProduct" p
WHERE
	(p."Sku" || Coalesce(:suffix, '')) IN (p."Title", 'B-200Жук')

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

