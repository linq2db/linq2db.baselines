-- Firebird.5 Firebird4

SELECT
	CAST(DateAdd(Day, 3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

