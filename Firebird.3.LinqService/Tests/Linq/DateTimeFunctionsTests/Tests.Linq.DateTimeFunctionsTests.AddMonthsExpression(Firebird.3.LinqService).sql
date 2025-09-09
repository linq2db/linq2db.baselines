BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	CAST(DateAdd(Month, -2, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

