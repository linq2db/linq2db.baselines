-- Firebird.3 Firebird3
SELECT
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue")) * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 36000000000
FROM
	"LinqDataTypes" "t"

