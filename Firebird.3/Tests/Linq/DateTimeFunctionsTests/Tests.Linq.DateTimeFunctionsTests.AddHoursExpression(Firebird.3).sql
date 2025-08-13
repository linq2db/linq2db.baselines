BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Extract(hour from DateAdd(Hour, 22, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

