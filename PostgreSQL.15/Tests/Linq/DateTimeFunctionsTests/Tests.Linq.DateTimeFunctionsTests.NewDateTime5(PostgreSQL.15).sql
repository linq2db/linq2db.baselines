﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	Cast(Floor(Extract(year from t."DateTimeValue")) as int) + 1
FROM
	"LinqDataTypes" t

