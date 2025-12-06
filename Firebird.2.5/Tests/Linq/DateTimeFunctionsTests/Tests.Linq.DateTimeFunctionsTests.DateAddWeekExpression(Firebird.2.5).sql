-- Firebird.2.5 Firebird

SELECT
	CAST(DateAdd(Day, -7, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

