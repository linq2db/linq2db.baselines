-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.TestId as TestId,
	t1.NTestId as NTestId
FROM
	TestTable t1
ORDER BY
	t1.Id DESC,
	t1.TestId
LIMIT 1

