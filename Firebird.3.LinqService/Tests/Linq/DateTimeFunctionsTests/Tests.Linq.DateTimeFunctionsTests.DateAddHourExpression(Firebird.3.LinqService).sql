BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Extract(hour from DateAdd(Hour, 1, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

