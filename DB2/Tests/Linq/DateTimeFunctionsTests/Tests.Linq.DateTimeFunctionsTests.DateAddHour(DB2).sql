﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	To_Number(To_Char(("t"."DateTimeValue" + 1 Hour), 'HH24'))
FROM
	"LinqDataTypes" "t"

