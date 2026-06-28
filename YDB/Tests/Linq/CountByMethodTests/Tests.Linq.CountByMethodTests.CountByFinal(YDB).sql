-- YDB Ydb

SELECT
	g_1.TestId as TestId,
	COUNT(*) as Count_1
FROM
	TestTable g_1
GROUP BY
	g_1.TestId
ORDER BY
	TestId

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.TestId as TestId
FROM
	TestTable t1

