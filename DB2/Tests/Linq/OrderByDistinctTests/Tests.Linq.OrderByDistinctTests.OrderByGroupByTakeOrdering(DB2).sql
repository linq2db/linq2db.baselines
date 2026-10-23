-- DB2 DB2.LUW DB2LUW
SELECT
	"g_1"."OrderData1" * 100 + "g_1"."OrderData2",
	COUNT(*)
FROM
	"OrderByDistinctData" "g_1"
GROUP BY
	"g_1"."OrderData1",
	"g_1"."OrderData2"
ORDER BY
	"g_1"."OrderData1" * 100 + "g_1"."OrderData2" DESC
FETCH NEXT 3 ROWS ONLY

