﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast((Cast(Floor(Extract(hour from t."DateTimeValue")) as int) || ':01:01') as Time)
FROM
	"LinqDataTypes" t

