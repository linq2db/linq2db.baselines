﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	To_Number(To_Char("t"."TransactionDate", 'WW'))
FROM
	"Transactions" "t"

