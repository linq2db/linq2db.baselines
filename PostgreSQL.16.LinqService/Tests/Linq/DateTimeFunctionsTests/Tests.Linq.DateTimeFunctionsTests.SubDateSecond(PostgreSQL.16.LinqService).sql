﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100 * Interval '1 Minute')::timestamp - t."DateTimeValue"::timestamp))
FROM
	"LinqDataTypes" t

