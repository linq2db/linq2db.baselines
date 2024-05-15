BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CAST(DateAdd(Year, ("t"."SmallIntValue" + 4) - 4, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

