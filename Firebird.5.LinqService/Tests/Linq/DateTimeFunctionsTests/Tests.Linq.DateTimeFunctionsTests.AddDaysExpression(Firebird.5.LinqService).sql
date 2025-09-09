BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	CAST(DateAdd(Day, 5, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

