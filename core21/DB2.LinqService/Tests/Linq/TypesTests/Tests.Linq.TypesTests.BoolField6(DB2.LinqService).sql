﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."MoneyValue"
FROM
	"LinqDataTypes" "t"
WHERE
	(CASE
		WHEN "t"."BoolValue" = 0 THEN 1
		ELSE 0
	END = 1 AND CASE
		WHEN "t"."BoolValue" = 0 THEN 1
		ELSE 0
	END IS NOT NULL)

