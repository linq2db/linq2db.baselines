-- Firebird.3 Firebird3
SELECT
	CAST(CAST(DateDiff(millisecond, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue")) * 10000 AS BigInt) AS DOUBLE PRECISION) / 600000000
FROM
	"LinqDataTypes" "t"

