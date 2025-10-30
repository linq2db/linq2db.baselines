-- Firebird.2.5 Firebird

SELECT
	CAST(DateAdd(Day, 5, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

