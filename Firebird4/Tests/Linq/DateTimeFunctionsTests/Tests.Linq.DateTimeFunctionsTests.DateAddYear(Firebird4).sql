BeforeExecute
-- Firebird4 Firebird

SELECT
	CAST(DateAdd(Year, 11, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

