BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	AVG(Coalesce(g_1."doubleDataType", 0::float8)),
	test_avg(Coalesce(g_1."doubleDataType", 0::float8))
FROM
	"AllTypes" g_1
GROUP BY
	g_1."bitDataType"

