-- Firebird.2.5 Firebird
SELECT
	CAST(CAST(DateDiff(millisecond, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue")) * 10000 AS BigInt) AS DOUBLE PRECISION) / 36000000000
FROM
	"LinqDataTypes" "t"

