﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	ROUND("t"."MoneyValue", 1) <> 0

