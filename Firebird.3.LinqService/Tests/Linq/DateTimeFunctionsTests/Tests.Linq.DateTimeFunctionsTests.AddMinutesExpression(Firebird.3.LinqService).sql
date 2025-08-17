BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Extract(minute from DateAdd(Minute, -8, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

