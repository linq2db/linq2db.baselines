﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(LPad(Extract(year from "t"."DateTimeValue"), 4, '0') || '-10-01' AS Date)
FROM
	"LinqDataTypes" "t"
WHERE
	Extract(month from CAST(LPad(Extract(year from "t"."DateTimeValue"), 4, '0') || '-10-01' AS Date)) = 10

