﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	Floor(Extract(hour From (t."TransactionDate" + Interval '1 Hour')))::Int
FROM
	"Transactions" t

