BeforeExecute
-- Firebird3 Firebird

SELECT
	Mod(Cast(Floor(Extract(millisecond from "t"."DateTimeValue")) as int), 7)
FROM
	"LinqDataTypes" "t"

