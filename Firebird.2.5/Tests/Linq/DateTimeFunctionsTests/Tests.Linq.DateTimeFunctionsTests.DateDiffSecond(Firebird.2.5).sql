-- Firebird.2.5 Firebird

SELECT
	DATEDIFF(second, "t"."DateTimeValue", DateAdd(Minute, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

