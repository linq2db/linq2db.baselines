﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Floor(Extract(hour From (t."DateTimeValue" + 22 * Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

