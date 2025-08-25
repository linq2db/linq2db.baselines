BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	CAST(DateAdd(Day, 5, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

