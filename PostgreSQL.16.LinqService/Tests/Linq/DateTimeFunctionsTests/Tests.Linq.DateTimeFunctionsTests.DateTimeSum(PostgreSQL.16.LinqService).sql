﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	g_1."ID",
	COUNT(*),
	SUM(ROUND(EXTRACT(EPOCH FROM ((g_1."DateTimeValue" + 1 * Interval '1 Day')::timestamp - g_1."DateTimeValue"::timestamp)) * 1000)),
	MAX(ROUND(EXTRACT(EPOCH FROM ((g_1."DateTimeValue" + 1 * Interval '1 Day')::timestamp - g_1."DateTimeValue"::timestamp)) * 1000))
FROM
	"LinqDataTypes" g_1
GROUP BY
	g_1."ID"

