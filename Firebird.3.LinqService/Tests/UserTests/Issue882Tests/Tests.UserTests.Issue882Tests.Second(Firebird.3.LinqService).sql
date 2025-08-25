BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	Mod(CAST(Floor(Extract(second from "t"."DateTimeValue")) AS Int), 7)
FROM
	"LinqDataTypes" "t"

