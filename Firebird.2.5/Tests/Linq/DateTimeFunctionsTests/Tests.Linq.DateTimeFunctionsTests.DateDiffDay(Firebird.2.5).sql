-- Firebird.2.5 Firebird

SELECT
	DATEDIFF(day, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

