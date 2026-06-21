-- YDB Ydb
DECLARE $take Int32
SET     $take = 3

SELECT
	g_1.OrderData1 * 100 + g_1.OrderData2 as Key_1,
	COUNT(*) as Count_1
FROM
	OrderByDistinctData g_1
GROUP BY
	g_1.OrderData1,
	g_1.OrderData2
ORDER BY
	Key_1 DESC
LIMIT $take

