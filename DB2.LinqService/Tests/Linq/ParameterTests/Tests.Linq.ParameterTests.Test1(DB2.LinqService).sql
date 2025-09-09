BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)
DECLARE @dt Timestamp(20) -- DateTime
SET     @dt = '2020-02-29-17.54.55.123123'

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

