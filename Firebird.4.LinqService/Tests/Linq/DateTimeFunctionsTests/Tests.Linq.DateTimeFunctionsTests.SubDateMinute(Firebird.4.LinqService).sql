BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	DateDiff(minute, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

