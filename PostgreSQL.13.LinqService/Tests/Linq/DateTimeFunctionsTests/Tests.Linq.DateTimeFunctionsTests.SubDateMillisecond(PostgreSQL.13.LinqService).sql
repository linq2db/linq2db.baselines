﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	(ROUND(EXTRACT(EPOCH FROM ((t."DateTimeValue" + 2023456789 * Interval '1 Millisecond')::timestamp - t."DateTimeValue"::timestamp)) * 1000))::Int
FROM
	"LinqDataTypes" t

