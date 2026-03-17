-- Firebird.5 Firebird4

SELECT
	DATEDIFF(hour, "t"."DateTimeValue", DateAdd(Hour, 100, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

