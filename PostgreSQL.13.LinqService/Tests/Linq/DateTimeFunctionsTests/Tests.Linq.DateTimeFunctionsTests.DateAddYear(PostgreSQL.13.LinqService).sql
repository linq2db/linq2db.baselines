﻿BeforeExecute
--  PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Date_Trunc('day', t."DateTimeValue" + 11 * Interval '1 Year')
FROM
	"LinqDataTypes" t

