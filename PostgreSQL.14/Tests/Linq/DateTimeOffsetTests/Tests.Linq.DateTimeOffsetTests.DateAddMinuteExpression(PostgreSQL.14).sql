﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 5

SELECT
	Floor(Extract(minute From (t."TransactionDate" + :Value * Interval '1 Minute')))::Int
FROM
	"Transactions" t

