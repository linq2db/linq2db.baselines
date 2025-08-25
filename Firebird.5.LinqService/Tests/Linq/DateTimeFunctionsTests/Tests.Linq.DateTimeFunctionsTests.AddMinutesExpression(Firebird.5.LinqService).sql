BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	Extract(minute from DateAdd(Minute, -8, "t"."DateTimeValue"))
FROM
	"LinqDataTypes" "t"

