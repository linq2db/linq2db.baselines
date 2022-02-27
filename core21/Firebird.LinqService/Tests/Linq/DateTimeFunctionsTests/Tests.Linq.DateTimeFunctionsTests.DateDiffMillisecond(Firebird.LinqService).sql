BeforeExecute
-- Firebird

SELECT
	DateDiff(millisecond, "t"."DateTimeValue", DateAdd(Second, 1, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

