-- Firebird.4 Firebird4

SELECT
	CAST(DateAdd(Year, 11, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

