﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	Extract(hour from ("t"."DateTimeValue" + 1 HOUR))
FROM
	"LinqDataTypes" "t"

