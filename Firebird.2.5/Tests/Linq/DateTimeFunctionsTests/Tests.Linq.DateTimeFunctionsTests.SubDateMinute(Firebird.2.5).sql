-- Firebird.2.5 Firebird

SELECT
	CAST(DateDiff(minute, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue")) AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "t"

