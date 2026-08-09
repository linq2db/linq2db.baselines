-- Firebird.3 Firebird3
SELECT
	CAST(CAST(DateDiff(millisecond, "t"."DateTimeValue", DateAdd(Millisecond, 2023456789, "t"."DateTimeValue")) * 10000 AS BigInt) AS DOUBLE PRECISION) / 10000
FROM
	"LinqDataTypes" "t"

