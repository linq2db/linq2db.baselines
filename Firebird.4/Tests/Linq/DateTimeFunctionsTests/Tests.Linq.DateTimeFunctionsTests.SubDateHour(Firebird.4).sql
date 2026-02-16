-- Firebird.4 Firebird4

SELECT
	CAST(DateDiff(hour, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue")) AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "t"

