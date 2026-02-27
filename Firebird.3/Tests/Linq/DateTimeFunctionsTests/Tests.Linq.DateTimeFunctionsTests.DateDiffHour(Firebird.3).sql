-- Firebird.3 Firebird3

SELECT
	DateDiff(hour, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

