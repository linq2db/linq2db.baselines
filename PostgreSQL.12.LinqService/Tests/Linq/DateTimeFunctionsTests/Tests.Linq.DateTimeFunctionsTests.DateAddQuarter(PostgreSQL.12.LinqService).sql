﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Date_Trunc('day', t."DateTimeValue" + (-Interval '1 Month') * 3)
FROM
	"LinqDataTypes" t

