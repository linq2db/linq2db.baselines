-- Firebird.2.5 Firebird

SELECT
	DATEDIFF(hour, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

