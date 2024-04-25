﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Extract(year from "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"
WHERE
	Extract(month from CAST(LPad(Extract(year from "t"."DateTimeValue"), 4, '0') || '-10-01 20:35:44.000' AS timestamp)) = 10

