BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	Mod(CAST(Floor(Extract(second from "t"."DateTimeValue")) AS Int), 7)
FROM
	"LinqDataTypes" "t"

