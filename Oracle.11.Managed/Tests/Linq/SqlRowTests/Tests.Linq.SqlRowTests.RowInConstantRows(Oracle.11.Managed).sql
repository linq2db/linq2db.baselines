-- Oracle.11.Managed Oracle11
SELECT
	x."Id",
	x."Country",
	x."State"
FROM
	"CountryStateTable" x
WHERE
	(x."Country", x."State") IN (('US', 'CA'), ('US', 'NY'))

