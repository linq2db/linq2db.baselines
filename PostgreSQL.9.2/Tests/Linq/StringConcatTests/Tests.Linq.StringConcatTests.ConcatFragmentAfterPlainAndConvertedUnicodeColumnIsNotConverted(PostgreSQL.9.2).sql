-- PostgreSQL.9.2 PostgreSQL
DECLARE @suffix Text(1) -- String
SET     @suffix = '-'

SELECT
	r."Plain" || r."Conv" || Coalesce(:suffix, '')
FROM
	"PlainAndConvertedUnicodeRow" r
LIMIT 2

