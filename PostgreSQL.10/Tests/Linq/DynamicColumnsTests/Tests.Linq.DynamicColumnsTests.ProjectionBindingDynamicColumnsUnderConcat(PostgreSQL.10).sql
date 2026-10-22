-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

