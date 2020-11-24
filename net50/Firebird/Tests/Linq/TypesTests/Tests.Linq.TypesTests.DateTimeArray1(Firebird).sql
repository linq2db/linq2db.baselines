BeforeExecute
-- Firebird
DECLARE @DateTimeValue_1 TimeStamp -- DateTime
SET     @DateTimeValue_1 = CAST('2001-01-11 01:11:21.100' AS timestamp)

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
	"t"."DateTimeValue" IN (@DateTimeValue_1)

