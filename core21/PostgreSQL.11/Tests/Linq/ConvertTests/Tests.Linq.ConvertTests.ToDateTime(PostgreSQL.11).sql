﻿BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast(Cast(Floor(Extract(year from t."DateTimeValue")) as int) as text) || '-01-01 00:00:00') as TimeStamp)
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(Extract(day from Cast((Cast(Cast(Floor(Extract(year from t."DateTimeValue")) as int) as text) || '-01-01 00:00:00') as TimeStamp))) as int) > 0

