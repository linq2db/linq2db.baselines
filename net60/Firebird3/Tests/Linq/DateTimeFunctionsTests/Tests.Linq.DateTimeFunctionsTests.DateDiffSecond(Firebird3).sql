BeforeExecute
-- Firebird3 Firebird

SELECT
	DateDiff(second, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

