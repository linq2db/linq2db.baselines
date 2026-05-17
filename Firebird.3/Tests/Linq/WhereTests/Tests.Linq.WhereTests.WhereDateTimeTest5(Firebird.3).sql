-- Firebird.3 Firebird3

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
	CAST("t1"."DateTimeValue" AS Date) = CAST(CAST('2009-09-20' AS TimeStamp) AS Date)

