﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."DateTimeValue" + t."SmallIntValue" * Interval '1 Month'
FROM
	"LinqDataTypes" t

