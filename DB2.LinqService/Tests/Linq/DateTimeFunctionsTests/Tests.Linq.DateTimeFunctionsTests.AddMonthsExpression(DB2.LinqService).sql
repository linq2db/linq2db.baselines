﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW
DECLARE @Date Integer(4) -- Int32
SET     @Date = -2

SELECT
	DATE("t"."DateTimeValue" + CAST(@Date AS Int) MONTH)
FROM
	"LinqDataTypes" "t"

