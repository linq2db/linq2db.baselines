-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	g_1."TestId",
	COUNT(*)
FROM
	"TestTable" g_1
GROUP BY
	g_1."TestId"
ORDER BY
	g_1."TestId"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."TestId"
FROM
	"TestTable" t1

