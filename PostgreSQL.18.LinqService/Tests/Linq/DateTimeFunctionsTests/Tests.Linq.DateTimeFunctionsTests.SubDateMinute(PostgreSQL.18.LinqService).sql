﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	EXTRACT(EPOCH FROM ((t."DateTimeValue" + 100 * Interval '1 Minute')::timestamp - t."DateTimeValue"::timestamp)) / 60
FROM
	"LinqDataTypes" t

