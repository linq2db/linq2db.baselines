-- Firebird.3 Firebird3
SELECT
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue")) * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 600000000
FROM
	"LinqDataTypes" "t"

