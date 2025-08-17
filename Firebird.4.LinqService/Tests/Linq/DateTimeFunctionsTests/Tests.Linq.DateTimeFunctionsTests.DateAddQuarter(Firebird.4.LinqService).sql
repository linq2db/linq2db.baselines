BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	CAST(DateAdd(Month, -3, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

