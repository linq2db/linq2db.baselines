﻿BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	EXTRACT(EPOCH FROM ((t."TransactionDate" + 100 * Interval '1 Hour')::timestamp - t."TransactionDate"::timestamp)) / 3600
FROM
	"Transactions" t

