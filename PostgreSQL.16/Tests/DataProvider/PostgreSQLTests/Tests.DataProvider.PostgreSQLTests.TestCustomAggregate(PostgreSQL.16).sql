﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Avg(g_1."doubleDataType"),
	test_avg(g_1."doubleDataType")
FROM
	"AllTypes" g_1
GROUP BY
	g_1."bitDataType"

