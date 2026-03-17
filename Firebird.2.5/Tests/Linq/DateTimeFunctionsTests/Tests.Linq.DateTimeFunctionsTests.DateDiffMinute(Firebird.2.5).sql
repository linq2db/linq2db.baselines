-- Firebird.2.5 Firebird

SELECT
	DATEDIFF(minute, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

