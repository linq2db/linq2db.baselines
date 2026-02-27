-- Firebird.5 Firebird4

SELECT
	DateDiff(second, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

