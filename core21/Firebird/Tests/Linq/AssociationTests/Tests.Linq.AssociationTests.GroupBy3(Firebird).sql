BeforeExecute
-- Firebird

SELECT
	Cast(Floor(Extract(year from "a_Types"."DateTimeValue")) as int)
FROM
	"Parent" "selectParam"
		LEFT JOIN "LinqDataTypes" "a_Types" ON "selectParam"."ParentID" = "a_Types".ID
GROUP BY
	Cast(Floor(Extract(year from "a_Types"."DateTimeValue")) as int)

