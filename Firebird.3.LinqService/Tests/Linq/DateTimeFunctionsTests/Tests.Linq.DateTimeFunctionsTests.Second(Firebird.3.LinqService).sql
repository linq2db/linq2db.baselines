BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	CAST(Floor(Extract(second from "t"."DateTimeValue")) AS Int)
FROM
	"LinqDataTypes" "t"

