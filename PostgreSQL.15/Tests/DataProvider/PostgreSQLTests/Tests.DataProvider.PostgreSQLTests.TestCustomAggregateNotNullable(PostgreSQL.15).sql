BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	AVG(Coalesce(g_1."doubleDataType", 0)),
	(
		SELECT
			test_avg(Coalesce(t1."doubleDataType", 0))
		FROM
			"AllTypes" t1
		WHERE
			(g_1."bitDataType" = t1."bitDataType" OR g_1."bitDataType" IS NULL AND t1."bitDataType" IS NULL)
	)
FROM
	"AllTypes" g_1
GROUP BY
	g_1."bitDataType"

