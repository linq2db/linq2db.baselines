BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	DateDiff(millisecond, "t"."DateTimeValue", DateAdd(Millisecond, 2023456789, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

