﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Extract(quarter from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

