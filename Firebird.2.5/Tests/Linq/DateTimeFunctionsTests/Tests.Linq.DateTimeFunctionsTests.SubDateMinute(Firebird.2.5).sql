-- Firebird.2.5 Firebird
SELECT
	CAST(CAST(CAST(DATEDIFF(millisecond, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue")) * 10000 AS BIGINT) AS BigInt) AS DOUBLE PRECISION) / 600000000
FROM
	"LinqDataTypes" "t"

