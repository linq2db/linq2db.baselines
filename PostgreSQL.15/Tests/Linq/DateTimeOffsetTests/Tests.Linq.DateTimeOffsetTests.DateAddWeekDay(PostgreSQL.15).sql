﻿BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	Date_Trunc('day', (t."TransactionDate" + Interval '1 Day') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

