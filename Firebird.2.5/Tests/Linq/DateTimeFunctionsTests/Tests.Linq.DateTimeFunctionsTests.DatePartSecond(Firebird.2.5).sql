BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	CAST(Floor(Extract(second from "t"."DateTimeValue")) AS Int)
FROM
	"LinqDataTypes" "t"

