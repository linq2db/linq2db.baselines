BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	CAST(DateAdd(Month, -3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

