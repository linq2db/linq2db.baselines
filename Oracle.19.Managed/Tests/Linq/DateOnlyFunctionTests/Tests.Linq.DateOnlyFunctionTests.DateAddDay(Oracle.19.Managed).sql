﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t."TransactionDate" + 5 * INTERVAL '1' DAY
FROM
	"Transactions" t

