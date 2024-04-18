BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Cast(Floor(Extract(year from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

