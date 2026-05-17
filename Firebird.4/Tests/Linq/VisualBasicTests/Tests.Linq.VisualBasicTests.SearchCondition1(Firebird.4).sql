-- Firebird.4 Firebird4

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
	NOT "t"."BoolValue" AND ("t"."SmallIntValue" = 5 OR "t"."SmallIntValue" = 7 OR Bin_Or("t"."SmallIntValue", 2) = 10)

