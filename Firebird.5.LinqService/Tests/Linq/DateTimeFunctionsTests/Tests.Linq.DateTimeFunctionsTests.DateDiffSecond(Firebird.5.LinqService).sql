BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	DateDiff(second, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

