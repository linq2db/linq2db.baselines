﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	DATE("t"."DateTimeValue" + ("t"."SmallIntValue" * 7) DAY)
FROM
	"LinqDataTypes" "t"

