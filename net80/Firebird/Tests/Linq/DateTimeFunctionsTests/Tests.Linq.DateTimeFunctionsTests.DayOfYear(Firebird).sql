BeforeExecute
-- Firebird

SELECT
	Cast(Floor(Extract(yearday from "t"."DateTimeValue")) as int) + 1
FROM
	"LinqDataTypes" "t"

