-- Firebird.3 Firebird3

SELECT
	DATEDIFF(minute, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

