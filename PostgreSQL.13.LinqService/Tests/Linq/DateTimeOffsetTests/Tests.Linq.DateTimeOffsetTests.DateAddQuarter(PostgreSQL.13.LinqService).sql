﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', (t."TransactionDate" + (-Interval '1 Month') * 3) AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

