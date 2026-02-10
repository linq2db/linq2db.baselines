-- Firebird.3 Firebird3

SELECT DISTINCT
	Extract(year from "a_Types"."DateTimeValue")
FROM
	"Parent" "g_1"
		LEFT JOIN "LinqDataTypes" "a_Types" ON "g_1"."ParentID" = "a_Types".ID

