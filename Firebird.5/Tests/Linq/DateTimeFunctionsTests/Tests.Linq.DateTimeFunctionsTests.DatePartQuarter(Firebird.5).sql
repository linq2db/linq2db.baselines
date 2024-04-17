BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Cast(Floor(Extract(quarter from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

