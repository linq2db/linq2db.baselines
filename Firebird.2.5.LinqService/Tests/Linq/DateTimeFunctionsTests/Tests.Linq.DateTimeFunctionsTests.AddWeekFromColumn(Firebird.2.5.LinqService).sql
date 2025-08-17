BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	CAST(DateAdd(Day, "t"."SmallIntValue" * 7, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

