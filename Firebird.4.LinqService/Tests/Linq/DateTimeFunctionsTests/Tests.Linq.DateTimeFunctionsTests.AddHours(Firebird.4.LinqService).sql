BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	Extract(hour from DateAdd(Hour, 22, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

