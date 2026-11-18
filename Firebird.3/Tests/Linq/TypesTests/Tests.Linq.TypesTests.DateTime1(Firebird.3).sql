-- Firebird.3 Firebird3
DECLARE @Date TimeStamp -- DateTime
SET     @Date = TIMESTAMP '2009-09-20 00:00:00.0000'

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

