BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

SELECT
	Mod(CAST(Floor(Extract(millisecond from "t"."DateTimeValue")) AS Int), 7)
FROM
	"LinqDataTypes" "t"

