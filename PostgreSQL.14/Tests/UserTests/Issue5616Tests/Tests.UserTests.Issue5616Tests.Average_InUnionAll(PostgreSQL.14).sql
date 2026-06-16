-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	0::Float
FROM
	"Table1" t1
UNION ALL
SELECT
	AVG(g_1."Id")
FROM
	"Table2" g_1
GROUP BY
	g_1."Id"

