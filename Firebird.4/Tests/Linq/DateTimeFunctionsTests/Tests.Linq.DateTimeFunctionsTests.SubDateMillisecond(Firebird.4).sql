-- Firebird.4 Firebird4

SELECT
	CAST(DateDiff(millisecond, "t"."DateTimeValue", DateAdd(Millisecond, 2023456789, "t"."DateTimeValue")) AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "t"

