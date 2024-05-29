BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"g_2"."Year_1"
FROM
	(
		SELECT
			Extract(year from "a_Types"."DateTimeValue") as "Year_1"
		FROM
			"Parent" "g_1"
				LEFT JOIN "LinqDataTypes" "a_Types" ON "g_1"."ParentID" = "a_Types".ID
	) "g_2"
GROUP BY
	"g_2"."Year_1"

