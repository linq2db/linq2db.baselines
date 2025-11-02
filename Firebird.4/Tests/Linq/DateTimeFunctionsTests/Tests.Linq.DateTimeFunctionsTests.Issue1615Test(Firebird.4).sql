-- Firebird.4 Firebird4

SELECT
	CAST(DateAdd(Day, 5, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

