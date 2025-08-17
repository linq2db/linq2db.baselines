BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @value BigInt(8) -- Int64
SET     @value = 0

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
	"t"."BigIntValue" = @value

