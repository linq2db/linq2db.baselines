﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @Value Integer -- Int32
SET     @Value = 41

SELECT
	Floor(Extract(second From (t."TransactionDate" + :Value * Interval '1 Second')))::Int
FROM
	"Transactions" t

