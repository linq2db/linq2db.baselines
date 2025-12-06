-- Firebird.4 Firebird4

SELECT
	CAST(DateAdd(Day, -7, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

