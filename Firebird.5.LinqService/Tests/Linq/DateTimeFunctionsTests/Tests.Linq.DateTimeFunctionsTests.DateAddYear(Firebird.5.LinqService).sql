BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	CAST(DateAdd(Year, 11, "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

