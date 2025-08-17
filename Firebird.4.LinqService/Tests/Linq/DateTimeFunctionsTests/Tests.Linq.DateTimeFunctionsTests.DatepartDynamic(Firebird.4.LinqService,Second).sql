BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	CAST(Floor(Extract(second from "t"."DateTimeValue")) AS Int)
FROM
	"LinqDataTypes" "t"

