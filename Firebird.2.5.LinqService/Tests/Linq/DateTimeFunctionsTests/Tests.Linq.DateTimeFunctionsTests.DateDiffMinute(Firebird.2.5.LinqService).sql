BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	DateDiff(minute, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

