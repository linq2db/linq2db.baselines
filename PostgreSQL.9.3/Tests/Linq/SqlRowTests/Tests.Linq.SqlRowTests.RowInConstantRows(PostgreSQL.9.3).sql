-- PostgreSQL.9.3 PostgreSQL
SELECT
	x."Id",
	x."Country",
	x."State"
FROM
	"CountryStateTable" x
WHERE
	(x."Country", x."State") IN (('US', 'CA'), ('US', 'NY'))

