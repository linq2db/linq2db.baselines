BeforeExecute
-- Firebird.5 Firebird4 (asynchronously)

SELECT
	Mod(CAST(Floor(Extract(millisecond from "t"."DateTimeValue")) AS Int), 7)
FROM
	"LinqDataTypes" "t"

