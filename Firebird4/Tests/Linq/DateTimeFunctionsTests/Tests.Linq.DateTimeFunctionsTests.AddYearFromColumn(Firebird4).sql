BeforeExecute
-- Firebird4 Firebird

SELECT
	CAST(DateAdd(Year, "t"."SmallIntValue", "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

