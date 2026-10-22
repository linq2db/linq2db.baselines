-- PostgreSQL.9.3 PostgreSQL
SELECT
	g_1."FirstName",
	COUNT(*)
FROM
	"Person" g_1
GROUP BY
	g_1."FirstName"
UNION ALL
SELECT
	g_2."FirstName",
	COUNT(*)
FROM
	"Person" g_2
GROUP BY
	g_2."FirstName"

