﻿BeforeExecute
-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL

SELECT
	t."DateTimeValue" + Cast(t."SmallIntValue" as Float) * Interval '1 Minute'
FROM
	"LinqDataTypes" t

