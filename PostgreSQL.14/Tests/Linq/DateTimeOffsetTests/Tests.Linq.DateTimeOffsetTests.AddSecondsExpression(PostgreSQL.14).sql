﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @Second Integer -- Int32
SET     @Second = -35

SELECT
	Floor(Extract(second From (t."TransactionDate" + :Second * Interval '1 Second')))::Int
FROM
	"Transactions" t

