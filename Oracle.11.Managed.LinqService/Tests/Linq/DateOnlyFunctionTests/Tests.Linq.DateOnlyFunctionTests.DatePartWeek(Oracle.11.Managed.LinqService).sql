﻿BeforeExecute
--  Oracle.11.Managed Oracle11

SELECT
	TO_NUMBER(TO_CHAR(t."TransactionDate", 'WW'))
FROM
	"Transactions" t

