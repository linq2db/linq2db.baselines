﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t."TransactionDate" + 12 * Interval '1 Year'
FROM
	"Transactions" t

