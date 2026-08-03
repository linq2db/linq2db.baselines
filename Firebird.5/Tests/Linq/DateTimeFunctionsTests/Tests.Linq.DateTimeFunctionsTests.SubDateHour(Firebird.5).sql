-- Firebird.5 Firebird4
SELECT
	CAST(CAST(CAST(DATEDIFF(millisecond, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue")) * 10000 AS BIGINT) AS BigInt) AS DOUBLE PRECISION) / 36000000000
FROM
	"LinqDataTypes" "t"

