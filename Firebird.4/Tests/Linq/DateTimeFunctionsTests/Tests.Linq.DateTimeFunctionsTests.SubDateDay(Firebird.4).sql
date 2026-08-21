-- Firebird.4 Firebird4
SELECT
	CAST(CAST(DateDiff(millisecond, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue")) * 10000 AS BigInt) AS DOUBLE PRECISION) / 864000000000
FROM
	"LinqDataTypes" "t"

