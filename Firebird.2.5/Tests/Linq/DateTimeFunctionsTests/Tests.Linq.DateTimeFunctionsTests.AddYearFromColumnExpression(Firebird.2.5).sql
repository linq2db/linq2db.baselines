BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CAST(DateAdd(Year, ("t"."SmallIntValue" + 4) - 4, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

