BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	AVG(g_1."doubleDataType"),
	(
		SELECT
			test_avg(t1."doubleDataType")
		FROM
			"AllTypes" t1
		WHERE
			(g_1."bitDataType" = t1."bitDataType" OR g_1."bitDataType" IS NULL AND t1."bitDataType" IS NULL)
	)
FROM
	"AllTypes" g_1
GROUP BY
	g_1."bitDataType"

