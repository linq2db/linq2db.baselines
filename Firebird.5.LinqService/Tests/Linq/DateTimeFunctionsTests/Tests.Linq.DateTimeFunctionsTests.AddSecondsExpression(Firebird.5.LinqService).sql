BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	CAST(Floor(Extract(second from DateAdd(Second, -35, "t"."DateTimeValue"))) AS Int)
FROM
	"LinqDataTypes" "t"

