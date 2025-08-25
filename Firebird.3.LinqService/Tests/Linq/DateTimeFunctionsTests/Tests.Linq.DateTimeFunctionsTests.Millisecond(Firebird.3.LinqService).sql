BeforeExecute
-- Firebird.3 Firebird3 (asynchronously)

SELECT
	CAST(Floor(Extract(millisecond from "t"."DateTimeValue")) AS Int)
FROM
	"LinqDataTypes" "t"

