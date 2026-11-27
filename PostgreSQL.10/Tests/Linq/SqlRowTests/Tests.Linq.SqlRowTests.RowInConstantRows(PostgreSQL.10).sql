-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	x."Id",
	x."Country",
	x."State"
FROM
	"CountryStateTable" x
WHERE
	(x."Country", x."State") IN (('US', 'CA'), ('US', 'NY'))

