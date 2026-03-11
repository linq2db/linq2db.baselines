-- Firebird.2.5 Firebird

SELECT
	CAST(DATEDIFF(day, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue")) AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "t"

