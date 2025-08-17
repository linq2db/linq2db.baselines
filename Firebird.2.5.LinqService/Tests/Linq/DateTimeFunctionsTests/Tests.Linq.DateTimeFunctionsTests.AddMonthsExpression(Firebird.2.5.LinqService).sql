BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	CAST(DateAdd(Month, -2, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

