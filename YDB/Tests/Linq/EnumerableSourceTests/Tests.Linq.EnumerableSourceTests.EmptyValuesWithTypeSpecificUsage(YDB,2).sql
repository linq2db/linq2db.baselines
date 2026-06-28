-- YDB Ydb

SELECT
	g_1.Id as Id,
	SUM(g_1.Id) as Count_1
FROM
	(SELECT CAST(NULL AS Int32) Id FROM (SELECT 1) AS dual WHERE 1 = 0) g_1
GROUP BY
	g_1.Id

