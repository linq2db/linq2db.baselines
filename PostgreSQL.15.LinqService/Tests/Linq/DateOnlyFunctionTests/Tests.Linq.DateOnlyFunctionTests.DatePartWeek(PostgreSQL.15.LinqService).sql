﻿BeforeExecute
--  PostgreSQL.15 PostgreSQL

SELECT
	Floor(Extract(week From t."TransactionDate"))::Int
FROM
	"Transactions" t

