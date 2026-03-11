-- Firebird.4 Firebird4

SELECT
	CAST(DATEDIFF(minute, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue")) AS DOUBLE PRECISION)
FROM
	"LinqDataTypes" "t"

