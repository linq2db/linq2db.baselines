BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Mod(Cast(Floor(Extract(millisecond from "t"."DateTimeValue")) as int), 7)
FROM
	"LinqDataTypes" "t"

