BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @Date Timestamp(20) -- DateTime
SET     @Date = '2009-09-20-00.00.00.000000'

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
	DATE("t"."DateTimeValue") > @Date

