BeforeExecute
-- Firebird4 Firebird

SELECT
	Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int)
FROM
	"LinqDataTypes" "selectParam"
GROUP BY
	Cast(Floor(Extract(year from "selectParam"."DateTimeValue")) as int)

