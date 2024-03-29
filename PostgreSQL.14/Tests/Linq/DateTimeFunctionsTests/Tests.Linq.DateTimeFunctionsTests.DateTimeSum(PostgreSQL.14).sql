﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ID",
	Count(*),
	Sum(ROUND(EXTRACT(EPOCH FROM ((t1."DateTimeValue" + 1 * Interval '1 Day')::timestamp - t1."DateTimeValue"::timestamp)) * 1000)),
	Max(ROUND(EXTRACT(EPOCH FROM ((t1."DateTimeValue" + 1 * Interval '1 Day')::timestamp - t1."DateTimeValue"::timestamp)) * 1000))
FROM
	"LinqDataTypes" t1
GROUP BY
	t1."ID"

