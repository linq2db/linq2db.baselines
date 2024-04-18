BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Cast(Floor(Extract(yearday from "t"."DateTimeValue")) as int) + 1
FROM
	"LinqDataTypes" "t"

