BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CAST(DateAdd(Day, 3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

