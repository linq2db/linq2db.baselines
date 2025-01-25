BeforeExecute
-- Firebird.3 Firebird3

SELECT
	DateDiff(minute, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

