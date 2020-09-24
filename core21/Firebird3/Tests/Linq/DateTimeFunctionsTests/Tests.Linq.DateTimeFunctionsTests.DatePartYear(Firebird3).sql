BeforeExecute
-- Firebird3 Firebird

SELECT
	Cast(Floor(Extract(year from "t"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "t"

