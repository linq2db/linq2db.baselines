BeforeExecute
-- Firebird3 Firebird

SELECT
	CAST(Floor(Extract(millisecond from "t"."DateTimeValue")) AS Int)
FROM
	"LinqDataTypes" "t"

