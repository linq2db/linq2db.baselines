-- Firebird.3 Firebird3

SELECT
	DateAdd(Minute, "t"."SmallIntValue", "t"."DateTimeValue")
FROM
	"LinqDataTypes" "t"

