BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Avg(t1."doubleDataType"),
	test_avg(t1."doubleDataType")
FROM
	"AllTypes" t1
GROUP BY
	t1."bitDataType"

