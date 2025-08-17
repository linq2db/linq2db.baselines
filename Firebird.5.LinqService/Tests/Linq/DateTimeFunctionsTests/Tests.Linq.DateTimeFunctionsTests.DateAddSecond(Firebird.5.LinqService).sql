BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	CAST(Floor(Extract(second from DateAdd(Second, 41, "t"."DateTimeValue"))) AS Int)
FROM
	"LinqDataTypes" "t"

