-- YDB Ydb

SELECT
	t.TestId as TestId,
	t1.count_1 as count_1
FROM
	TestTable t
		INNER JOIN (
			SELECT
				g_1.TestId as Key_1,
				COUNT(*) as count_1
			FROM
				TestTable g_1
			GROUP BY
				g_1.TestId
		) t1 ON t1.Key_1 = t.TestId

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.TestId as TestId
FROM
	TestTable t1

