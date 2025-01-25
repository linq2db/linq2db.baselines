BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Extract(hour from DateAdd(Hour, 1, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

