BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Mod(Cast(Floor(Extract(millisecond from "t"."DateTimeValue")) as int), 7)
FROM
	"LinqDataTypes" "t"

