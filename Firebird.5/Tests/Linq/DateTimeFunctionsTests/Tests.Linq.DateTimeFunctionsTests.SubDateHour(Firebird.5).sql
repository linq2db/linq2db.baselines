-- Firebird.5 Firebird4

SELECT
	CAST(DATEDIFF(hour, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue")) AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "t"

