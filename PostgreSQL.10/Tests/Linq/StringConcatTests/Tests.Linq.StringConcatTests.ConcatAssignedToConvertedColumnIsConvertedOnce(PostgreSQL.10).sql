-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p Text(2) -- String
SET     @p = 'x:'
DECLARE @suffix Text(2) -- String
SET     @suffix = '-s'

UPDATE
	"ConvertedTargetRow"
SET
	"Conv" = Coalesce(:p, '') || "ConvertedTargetRow"."Sku" || Coalesce(:suffix, '')

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."Conv"
FROM
	"ConvertedTargetRow" t1
LIMIT 2

