﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p1 Integer(4) -- Int32
SET     @p1 = -8

SELECT
	"t"."DateTimeValue" + @p1 Minute
FROM
	"LinqDataTypes" "t"

