BeforeExecute
-- Firebird4 Firebird

SELECT
	CAST(DateAdd(Day, "t"."SmallIntValue" * 7, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

