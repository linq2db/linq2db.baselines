﻿BeforeExecute
--  PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	Date_Trunc('day', t."DateTimeValue" + 5 * Interval '1 Day')
FROM
	"LinqDataTypes" t

