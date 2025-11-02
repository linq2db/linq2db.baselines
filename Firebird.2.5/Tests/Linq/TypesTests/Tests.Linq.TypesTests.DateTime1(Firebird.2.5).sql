-- Firebird.2.5 Firebird
DECLARE @Date TimeStamp -- DateTime
SET     @Date = CAST('2009-09-20' AS timestamp)

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
	CAST("t"."DateTimeValue" AS Date) > @Date

