BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	Extract(hour from DateAdd(Hour, 1, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

