﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @DateTimeValue Timestamp(20) -- DateTime
SET     @DateTimeValue = '2009-09-27-00.00.00.000000'

SELECT
	"_".ID,
	"_"."MoneyValue",
	"_"."DateTimeValue",
	"_"."DateTimeValue2",
	"_"."BoolValue",
	"_"."GuidValue",
	"_"."SmallIntValue",
	"_"."IntValue",
	"_"."BigIntValue",
	"_"."StringValue"
FROM
	"LinqDataTypes" "_"
WHERE
	"_"."DateTimeValue" = @DateTimeValue

