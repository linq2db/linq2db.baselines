BeforeExecute
-- Firebird.4 Firebird4

SELECT
	CAST(DateAdd(Year, "t"."SmallIntValue", "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

