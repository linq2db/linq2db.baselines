-- YDB Ydb
SELECT
	g_1.ItemId as ItemId,
	MAX(CASE
		WHEN g_1.`Value` = '10'u THEN 1
		ELSE 0
	END) as Max_1,
	MIN(CASE
		WHEN g_1.`Value` = '10'u THEN 1
		ELSE 0
	END) as Min_1
FROM
	ItemValue g_1
GROUP BY
	g_1.ItemId
ORDER BY
	ItemId

