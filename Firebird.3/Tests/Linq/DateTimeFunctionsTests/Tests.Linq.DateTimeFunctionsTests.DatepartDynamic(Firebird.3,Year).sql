BeforeExecute
-- Firebird.3 Firebird3

SELECT
	Cast(Floor(Extract(year from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

