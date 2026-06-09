-- YDB Ydb

SELECT
	g_1.FirstName as FirstName,
	g_1.LastName as LastName,
	COUNT(*) as Count_1
FROM
	Person g_1
GROUP BY
	g_1.FirstName,
	g_1.LastName
ORDER BY
	FirstName

