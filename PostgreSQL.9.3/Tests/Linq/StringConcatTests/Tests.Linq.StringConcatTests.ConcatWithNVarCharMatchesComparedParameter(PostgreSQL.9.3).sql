-- PostgreSQL.9.3 PostgreSQL
DECLARE @key Varchar(13) -- String
SET     @key = 'A-100A-100Жук'

SELECT
	p."Id"
FROM
	"ConcatProduct" p
WHERE
	(p."Sku" || p."Title") = :key

-- PostgreSQL.9.3 PostgreSQL
SELECT
	t1."Id",
	t1."Sku",
	t1."Title"
FROM
	"ConcatProduct" t1

