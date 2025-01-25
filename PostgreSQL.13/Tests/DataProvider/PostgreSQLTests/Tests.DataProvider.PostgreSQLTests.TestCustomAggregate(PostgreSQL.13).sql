BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	AVG(g_1."doubleDataType"),
	test_avg(g_1."doubleDataType")
FROM
	"AllTypes" g_1
GROUP BY
	g_1."bitDataType"

