-- Firebird.4 Firebird4

SELECT
	CAST(DateAdd(Day, "t"."SmallIntValue" * 7, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

