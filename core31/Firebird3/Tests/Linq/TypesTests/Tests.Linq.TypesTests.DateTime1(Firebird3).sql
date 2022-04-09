BeforeExecute
-- Firebird3 Firebird
DECLARE @Date_1 TimeStamp -- DateTime
SET     @Date_1 = CAST('2009-09-20' AS timestamp)

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
	Cast("t"."DateTimeValue" as Date) > @Date_1

