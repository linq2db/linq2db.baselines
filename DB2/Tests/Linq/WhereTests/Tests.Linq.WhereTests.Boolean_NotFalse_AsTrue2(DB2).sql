﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r".ID,
	"r"."MoneyValue",
	"r"."DateTimeValue",
	"r"."BoolValue",
	"r"."GuidValue",
	"r"."BinaryValue",
	"r"."SmallIntValue",
	"r"."StringValue"
FROM
	"LinqDataTypes" "r"
WHERE
	"r"."BoolValue" = 0

