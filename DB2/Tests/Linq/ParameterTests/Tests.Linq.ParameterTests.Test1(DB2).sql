-- DB2 DB2.LUW DB2LUW
DECLARE @dt Timestamp(20) -- DateTime
SET     @dt = CAST('2020-02-29-17.54.55.123123' AS TIMESTAMP(6))

SELECT
	"t".ID,
	"t"."MoneyValue",
	"t"."DateTimeValue",
	"t"."BoolValue",
	"t"."GuidValue",
	"t"."BinaryValue",
	"t"."SmallIntValue",
	"t"."StringValue"
FROM
	"LinqDataTypes" "t"
WHERE
	"t"."DateTimeValue" = @dt

