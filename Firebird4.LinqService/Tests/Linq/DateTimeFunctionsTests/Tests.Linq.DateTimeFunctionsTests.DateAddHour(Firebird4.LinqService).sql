BeforeExecute
-- Firebird4 Firebird

SELECT
	Extract(hour from DateAdd(Hour, 1, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

