-- PostgreSQL.18 PostgreSQL

SELECT
	x."Id",
	x."Country",
	x."State"
FROM
	"Issue3631Table" x
WHERE
	(x."Country", x."State") IN (('US', 'CA'), ('US', 'NY'))

