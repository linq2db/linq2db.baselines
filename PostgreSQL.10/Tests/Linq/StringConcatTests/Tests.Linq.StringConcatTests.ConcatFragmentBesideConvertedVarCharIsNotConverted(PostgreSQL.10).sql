-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @dash Text(1) -- String
SET     @dash = '-'

SELECT
	p."Conv" || '|' || Coalesce(:dash, '')
FROM
	"ConvertedConcatRow" p
LIMIT 2

