BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	CAST(Floor(Extract(millisecond from "t"."DateTimeValue")) AS Int)
FROM
	"LinqDataTypes" "t"

