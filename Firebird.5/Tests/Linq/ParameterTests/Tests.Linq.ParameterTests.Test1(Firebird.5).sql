-- Firebird.5 Firebird4
DECLARE @dt TimeStamp -- DateTime
SET     @dt = CAST('2020-02-29 17:54:55.123' AS timestamp)

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

