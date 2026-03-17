-- DB2 DB2.LUW DB2LUW

SELECT
	"g_1"."TestId",
	COUNT(*)
FROM
	"TestTable" "g_1"
GROUP BY
	"g_1"."TestId"
ORDER BY
	"g_1"."TestId"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."TestId"
FROM
	"TestTable" "t1"

