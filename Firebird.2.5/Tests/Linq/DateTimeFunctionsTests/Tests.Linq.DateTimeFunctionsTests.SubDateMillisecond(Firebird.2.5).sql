-- Firebird.2.5 Firebird
SELECT
	CAST(CAST(CAST(Floor(DateDiff(millisecond, "t"."DateTimeValue", DateAdd(Millisecond, 2023456789, "t"."DateTimeValue")) * 10) AS BigInt) * 1000 AS BigInt) AS DOUBLE PRECISION) / 10000
FROM
	"LinqDataTypes" "t"

