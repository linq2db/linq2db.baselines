-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 20
DECLARE $Ids0_2 Int32
SET     $Ids0_2 = 30

SELECT
	t1.Id as Id,
	t1.TestId as TestId
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.TestId ORDER BY e.TestId) as RowNumber,
			e.TestId as TestId,
			e.Id as Id
		FROM
			TestTable e
		WHERE
			e.TestId NOT IN ($Ids0_1, $Ids0_2)
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.TestId

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.TestId as TestId
FROM
	TestTable t1

