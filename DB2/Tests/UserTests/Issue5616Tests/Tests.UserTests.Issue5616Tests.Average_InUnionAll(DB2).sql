-- DB2 DB2.LUW DB2LUW

SELECT
	CAST(0 AS Float)
FROM
	"Table1" "t1"
UNION ALL
SELECT
	AVG("g_1"."Id")
FROM
	"Table2" "g_1"
GROUP BY
	"g_1"."Id"

