﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @p Integer(4) -- Int32
SET     @p = 226

SELECT
	"t"."DateTimeValue" + (@p / 1000.0) Second
FROM
	"LinqDataTypes" "t"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t"."DateTimeValue"
FROM
	"LinqDataTypes" "t"

