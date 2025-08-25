BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	DateDiff(day, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

