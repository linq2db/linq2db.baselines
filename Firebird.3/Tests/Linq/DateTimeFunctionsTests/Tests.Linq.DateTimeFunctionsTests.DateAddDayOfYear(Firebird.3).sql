-- Firebird.3 Firebird3

SELECT
	CAST(DateAdd(Day, 3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

