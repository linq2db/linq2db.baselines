﻿BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	Cast(Floor(Extract(doy from t."DateTimeValue")) as int)
FROM
	"LinqDataTypes" t

