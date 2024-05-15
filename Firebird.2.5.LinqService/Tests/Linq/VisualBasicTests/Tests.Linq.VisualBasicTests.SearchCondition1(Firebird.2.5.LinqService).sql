BeforeExecute
-- Firebird.2.5 Firebird

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
	"t"."BoolValue" = '0' AND ("t"."SmallIntValue" = 5 OR "t"."SmallIntValue" = 7 OR Bin_Or("t"."SmallIntValue", 2) = 10)

