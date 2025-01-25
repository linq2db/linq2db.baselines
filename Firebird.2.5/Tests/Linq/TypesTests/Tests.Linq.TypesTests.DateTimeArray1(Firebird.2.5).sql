BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @DateTimeValue TimeStamp -- DateTime
SET     @DateTimeValue = CAST('2001-01-11 01:11:21.100' AS timestamp)

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
	"t"."DateTimeValue" IN (@DateTimeValue)

