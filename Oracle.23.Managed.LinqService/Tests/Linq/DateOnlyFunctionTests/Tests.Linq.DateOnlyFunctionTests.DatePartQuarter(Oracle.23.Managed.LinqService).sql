﻿BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	TO_NUMBER(TO_CHAR(t."TransactionDate", 'Q'))
FROM
	"Transactions" t

