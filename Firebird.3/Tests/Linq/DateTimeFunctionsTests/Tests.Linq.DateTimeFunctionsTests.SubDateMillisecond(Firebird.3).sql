-- Firebird.3 Firebird3
SELECT
	CAST(CAST(CAST(DATEDIFF(millisecond, "t"."DateTimeValue", DateAdd(Millisecond, 2023456789, "t"."DateTimeValue")) * 10000 AS BIGINT) AS BigInt) AS DOUBLE PRECISION) / 10000
FROM
	"LinqDataTypes" "t"

