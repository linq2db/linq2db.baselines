﻿BeforeExecute
--  PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	AVG(g_1."doubleDataType"),
	test_avg(g_1."doubleDataType")
FROM
	"AllTypes" g_1
GROUP BY
	g_1."bitDataType"

