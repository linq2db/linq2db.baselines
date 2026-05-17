-- Firebird.4 Firebird4

SELECT
	DATEDIFF(millisecond, "t"."DateTimeValue", DateAdd(Millisecond, 2023456789, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

