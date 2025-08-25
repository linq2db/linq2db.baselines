BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	CAST(DateAdd(Month, "t"."SmallIntValue" * 3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

