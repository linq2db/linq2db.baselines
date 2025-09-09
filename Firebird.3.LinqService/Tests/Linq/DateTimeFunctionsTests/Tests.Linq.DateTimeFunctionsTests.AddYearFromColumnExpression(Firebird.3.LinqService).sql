BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	CAST(DateAdd(Year, "t"."SmallIntValue", "t"."DateTimeValue") AS Date)
FROM
	"LinqDataTypes" "t"

