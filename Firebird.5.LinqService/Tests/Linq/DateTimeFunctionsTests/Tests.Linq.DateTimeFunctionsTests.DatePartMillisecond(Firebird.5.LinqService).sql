BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Cast(Floor(Extract(millisecond from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

