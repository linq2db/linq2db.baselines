BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	DateDiff(hour, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

