﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)

SELECT
	Date_Trunc('day', (t."TransactionDate" + -2 * Interval '1 Month') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

