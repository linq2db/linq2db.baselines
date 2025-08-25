BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	CAST(Floor(Extract(second from DateAdd(Second, -35, "t"."DateTimeValue"))) AS Int)
FROM
	"LinqDataTypes" "t"

