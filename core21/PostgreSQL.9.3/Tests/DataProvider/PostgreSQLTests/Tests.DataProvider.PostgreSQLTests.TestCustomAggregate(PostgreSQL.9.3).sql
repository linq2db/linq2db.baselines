BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT 
	Avg(t1."doubleDataType"), 
	test_avg(t1."doubleDataType")
FROM
	"AllTypes" t1
GROUP BY
	t1."bitDataType"

