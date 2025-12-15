-- Firebird.2.5 Firebird

SELECT
	CAST(DateAdd(Year, 1, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

