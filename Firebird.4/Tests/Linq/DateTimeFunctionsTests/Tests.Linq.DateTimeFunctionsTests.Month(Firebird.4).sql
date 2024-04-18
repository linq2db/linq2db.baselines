BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Cast(Floor(Extract(month from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

