BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	CAST(Floor(Extract(millisecond from "t"."DateTimeValue")) AS Int)
FROM
	"LinqDataTypes" "t"

