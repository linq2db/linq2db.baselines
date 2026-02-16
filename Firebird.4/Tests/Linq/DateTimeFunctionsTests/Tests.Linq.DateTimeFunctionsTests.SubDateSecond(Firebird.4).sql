-- Firebird.4 Firebird4

SELECT
	CAST(DateDiff(second, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue")) AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "t"

