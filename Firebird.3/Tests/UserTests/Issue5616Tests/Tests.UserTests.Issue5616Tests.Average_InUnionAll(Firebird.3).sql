-- Firebird.3 Firebird3

SELECT
	CAST(0 AS DOUBLE PRECISION)
FROM
	"Table1" "t1"
UNION ALL
SELECT
	AVG("g_1"."Id")
FROM
	"Table2" "g_1"
GROUP BY
	"g_1"."Id"

