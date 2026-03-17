-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	AVG(Coalesce(g_1."doubleDataType", 0)),
	test_avg(Coalesce(g_1."doubleDataType", 0))
FROM
	"AllTypes" g_1
GROUP BY
	g_1."bitDataType"

