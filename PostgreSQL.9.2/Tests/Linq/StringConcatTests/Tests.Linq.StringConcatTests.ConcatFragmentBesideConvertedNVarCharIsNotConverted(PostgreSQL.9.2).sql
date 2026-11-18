-- PostgreSQL.9.2 PostgreSQL
DECLARE @dash Text(1) -- String
SET     @dash = '-'

SELECT
	p."Conv" || '|' || Coalesce(:dash, '')
FROM
	"ConvertedUnicodeConcatRow" p
LIMIT 2

