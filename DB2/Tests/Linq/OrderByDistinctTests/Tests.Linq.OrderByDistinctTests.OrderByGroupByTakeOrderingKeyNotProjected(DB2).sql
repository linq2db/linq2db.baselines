-- DB2 DB2.LUW DB2LUW
SELECT
	"g_2"."OrderData1"
FROM
	(
		SELECT DISTINCT
			"g_1"."OrderData1",
			"g_1"."OrderData2"
		FROM
			"OrderByDistinctData" "g_1"
	) "g_2"
ORDER BY
	"g_2"."OrderData1" * 100 + "g_2"."OrderData2" DESC
FETCH NEXT 3 ROWS ONLY

