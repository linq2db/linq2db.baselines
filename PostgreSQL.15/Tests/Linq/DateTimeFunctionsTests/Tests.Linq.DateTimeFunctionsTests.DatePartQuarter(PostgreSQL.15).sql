﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(quarter from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

