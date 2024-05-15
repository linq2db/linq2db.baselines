BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CAST(DateAdd(Day, (("t"."SmallIntValue" + 4) - 4) * 7, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

