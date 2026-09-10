-- Firebird.3 Firebird3
SELECT
	CAST(CAST(DateDiff(millisecond, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue")) * 10000 AS BigInt) AS DOUBLE PRECISION) / 864000000000
FROM
	"LinqDataTypes" "t"

