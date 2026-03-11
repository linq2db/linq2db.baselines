-- Firebird.3 Firebird3

SELECT
	Extract(minute from DateAdd(Minute, 5, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

