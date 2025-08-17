BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	CAST(DateAdd(Day, 1, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

