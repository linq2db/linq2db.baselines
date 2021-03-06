﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @DateTimeValue Timestamp(20) -- DateTime
SET     @DateTimeValue = '2001-01-11-01.11.21.100000'

SELECT
	"t".ID,
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."DateTimeValue2",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."SmallIntValue",
	"t"."IntValue",
	"t"."BigIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" IN (@DateTimeValue)

