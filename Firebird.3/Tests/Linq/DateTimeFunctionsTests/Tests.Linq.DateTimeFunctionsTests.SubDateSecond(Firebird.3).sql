-- Firebird.3 Firebird3

SELECT
	CAST(DATEDIFF(second, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue")) AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "t"

