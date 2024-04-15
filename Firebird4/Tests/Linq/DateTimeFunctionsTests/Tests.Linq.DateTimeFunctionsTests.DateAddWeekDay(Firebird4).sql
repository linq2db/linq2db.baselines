BeforeExecute
-- Firebird4 Firebird

SELECT
	CAST(DateAdd(Day, 1, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

