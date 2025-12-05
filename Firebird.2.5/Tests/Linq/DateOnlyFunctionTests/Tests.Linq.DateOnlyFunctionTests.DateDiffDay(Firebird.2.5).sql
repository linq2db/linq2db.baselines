-- Firebird.2.5 Firebird

SELECT
	DateDiff(day, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

