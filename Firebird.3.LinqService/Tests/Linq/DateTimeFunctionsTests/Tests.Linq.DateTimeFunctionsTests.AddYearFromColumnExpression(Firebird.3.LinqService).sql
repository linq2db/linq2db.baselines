BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CAST(DateAdd(Year, ("t"."SmallIntValue" + 4) - 4, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

