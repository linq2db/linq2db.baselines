﻿BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT
	t."DateTimeValue"
FROM
	"LinqDataTypes" t
WHERE
	Cast(Floor(Extract(day from t."DateTimeValue")) as int) > 0

