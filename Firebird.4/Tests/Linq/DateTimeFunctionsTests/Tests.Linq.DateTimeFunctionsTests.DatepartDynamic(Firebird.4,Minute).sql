BeforeExecute
-- Firebird.4 Firebird4

SELECT
	Cast(Floor(Extract(minute from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

