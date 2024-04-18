BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Cast(Floor(Extract(day from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

