﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Extract(second from t."DateTimeValue")) as int) % 7
FROM
	"LinqDataTypes" t

