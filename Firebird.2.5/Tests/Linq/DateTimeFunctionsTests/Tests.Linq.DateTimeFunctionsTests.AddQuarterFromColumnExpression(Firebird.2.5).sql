BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CAST(DateAdd(Month, (("t"."SmallIntValue" + 4) - 4) * 3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

