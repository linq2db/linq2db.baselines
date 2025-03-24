﻿BeforeExecute
--  PostgreSQL.15 PostgreSQL
DECLARE @Date Integer -- Int32
SET     @Date = 5

SELECT
	Date_Trunc('day', (t."TransactionDate" + :Date * Interval '1 Day') AT TIME ZONE 'UTC')::Date
FROM
	"Transactions" t

