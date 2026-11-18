-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @dash Text(1) -- String
SET     @dash = '-'

SELECT
	p."Conv" || '|' || Coalesce(:dash, '')
FROM
	"ConvertedUnicodeConcatRow" p
LIMIT 2

