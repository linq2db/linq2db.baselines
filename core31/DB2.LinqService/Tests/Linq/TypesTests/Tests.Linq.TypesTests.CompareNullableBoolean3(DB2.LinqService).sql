BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @param4 SmallInt(4) -- Int16
SET     @param4 = 0

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
	"t"."BoolValue" = @param4

