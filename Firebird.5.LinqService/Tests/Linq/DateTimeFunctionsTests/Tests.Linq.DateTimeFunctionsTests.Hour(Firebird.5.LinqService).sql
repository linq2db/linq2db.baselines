BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Cast(Floor(Extract(hour from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

