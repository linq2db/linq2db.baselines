-- Firebird.3 Firebird3

SELECT
	DateDiff(second, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

