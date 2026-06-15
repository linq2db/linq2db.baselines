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
			ROW_NUMBER() OVER (PARTITION BY e.TestId ORDER BY e.Id) as RowNumber,
			e.Id as Id,
			e.TestId as TestId
		FROM
			TestTable e
		WHERE
			e.TestId IN ($Ids0_1, $Ids0_2)
	) t1
WHERE
	t1.RowNumber = 1l
ORDER BY
	t1.Id DESC

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.TestId as TestId
FROM
	TestTable t1

