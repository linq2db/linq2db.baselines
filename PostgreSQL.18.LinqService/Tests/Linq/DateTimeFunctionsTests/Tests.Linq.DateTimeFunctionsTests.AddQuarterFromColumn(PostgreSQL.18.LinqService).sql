﻿BeforeExecute
-- PostgreSQL.18 PostgreSQL

SELECT
	Date_Trunc('day', t."DateTimeValue" + (t."SmallIntValue" * Interval '1 Month') * 3)
FROM
	"LinqDataTypes" t

