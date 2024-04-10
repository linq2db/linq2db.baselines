BeforeExecute
-- Firebird4 Firebird

SELECT
	CAST(DateAdd(Day, 3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

