﻿BeforeExecute
--  Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	d."TransactionDate"
FROM
	"Transactions" d
WHERE
	EXTRACT(DAY FROM d."TransactionDate") > 0

