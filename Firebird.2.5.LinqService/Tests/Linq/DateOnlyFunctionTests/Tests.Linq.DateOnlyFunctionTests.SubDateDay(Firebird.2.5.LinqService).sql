BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	DateDiff(day, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

