-- Firebird.4 Firebird4

SELECT
	CAST(DateDiff(day, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue")) AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "t"

