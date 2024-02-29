BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Avg(Coalesce(t1."doubleDataType", 0)),
	test_avg(Coalesce(t1."doubleDataType", 0))
FROM
	"AllTypes" t1
GROUP BY
	t1."bitDataType"

