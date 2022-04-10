BeforeExecute
-- Firebird4 Firebird

SELECT
	Cast(Floor(Extract(yearday from "t"."DateTimeValue")) as int) + 1
FROM
	"LinqDataTypes" "t"

