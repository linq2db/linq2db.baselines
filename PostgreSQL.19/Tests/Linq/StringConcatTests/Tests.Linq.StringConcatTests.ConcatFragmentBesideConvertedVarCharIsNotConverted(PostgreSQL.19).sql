-- PostgreSQL.19 PostgreSQL12
DECLARE @dash Text(1) -- String
SET     @dash = '-'

SELECT
	p."Conv" || '|' || Coalesce(:dash, '')
FROM
	"ConvertedConcatRow" p
LIMIT 2

