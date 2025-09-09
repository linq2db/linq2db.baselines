BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	Extract(hour from DateAdd(Hour, 1, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

