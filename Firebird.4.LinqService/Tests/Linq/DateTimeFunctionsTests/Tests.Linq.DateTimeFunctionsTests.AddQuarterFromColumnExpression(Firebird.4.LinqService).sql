BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	CAST(DateAdd(Month, "t"."SmallIntValue" * 3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

