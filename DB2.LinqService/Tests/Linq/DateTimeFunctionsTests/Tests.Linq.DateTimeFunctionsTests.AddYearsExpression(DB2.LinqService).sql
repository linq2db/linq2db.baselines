﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Date Integer(4) -- Int32
SET     @Date = 1

SELECT
	DATE("t"."DateTimeValue" + CAST(@Date AS Int) YEAR)
FROM
	"LinqDataTypes" "t"

