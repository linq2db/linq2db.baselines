-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @suffix Text(1) -- String
SET     @suffix = '-'

SELECT
	r."Plain" || r."Conv" || Coalesce(:suffix, '')
FROM
	"PlainAndConvertedUnicodeRow" r
LIMIT 2

