BeforeExecute
-- Firebird3 Firebird

SELECT
	CAST(DateAdd(Day, -7, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

