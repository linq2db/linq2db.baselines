﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast(Floor(Extract(year from t."DateTimeValue")) as int) || '-01-01') as Date)
FROM
	"LinqDataTypes" t

