-- Firebird.5 Firebird4

SELECT
	DateDiff(millisecond, "t"."DateTimeValue", DateAdd(Millisecond, 2023456789, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

