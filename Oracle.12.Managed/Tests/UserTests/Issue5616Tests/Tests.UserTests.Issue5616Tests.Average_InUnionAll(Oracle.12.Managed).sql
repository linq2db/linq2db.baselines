-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	CAST(0D AS Float)
FROM
	"Table1" t1
UNION ALL
SELECT
	AVG(g_1."Id")
FROM
	"Table2" g_1
GROUP BY
	g_1."Id"

