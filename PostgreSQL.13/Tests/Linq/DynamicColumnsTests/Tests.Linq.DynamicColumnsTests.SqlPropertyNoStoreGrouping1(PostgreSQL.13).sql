BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	g_1."FirstName",
	COUNT(*)
FROM
	"Person" g_1
GROUP BY
	g_1."FirstName"
ORDER BY
	g_1."FirstName"

