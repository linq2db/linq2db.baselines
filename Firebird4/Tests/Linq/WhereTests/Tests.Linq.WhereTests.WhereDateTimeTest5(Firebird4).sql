BeforeExecute
-- Firebird4 Firebird
DECLARE @Date TimeStamp -- DateTime
SET     @Date = CAST('2009-09-20' AS timestamp)

SELECT
	"t1".ID,
	"t1"."MoneyValue",
	"t1"."DateTimeValue",
	"t1"."BoolValue",
	"t1"."GuidValue",
	"t1"."BinaryValue",
	"t1"."SmallIntValue",
	"t1"."StringValue"
FROM
	"LinqDataTypes" "t1"
WHERE
	Cast("t1"."DateTimeValue" as Date) = @Date

