BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Cast(Floor(Extract(yearday from "t"."DateTimeValue")) as int) + 1
FROM
	"LinqDataTypes" "t"

