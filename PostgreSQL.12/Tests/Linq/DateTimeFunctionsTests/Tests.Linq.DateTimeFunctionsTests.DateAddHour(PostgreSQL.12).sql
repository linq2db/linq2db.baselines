﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(hour From (t."DateTimeValue" + Interval '1 Hour')))::Int
FROM
	"LinqDataTypes" t

