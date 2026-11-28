-- YDB Ydb
SELECT
	1 as c1
FROM
	(
		SELECT DISTINCT
			g_1.FirstName as FirstName
		FROM
			Person g_1
	) g_2

