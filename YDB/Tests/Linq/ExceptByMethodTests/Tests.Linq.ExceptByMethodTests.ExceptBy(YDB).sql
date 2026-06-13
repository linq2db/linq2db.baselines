-- YDB Ydb
DECLARE $Ids0_1 Int32
SET     $Ids0_1 = 20

SELECT
	e_1.Id as Id,
	e_1.TestId as TestId
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.TestId ORDER BY e.Id) as RowNumber,
			e.Id as Id,
			e.TestId as TestId
		FROM
			TestTable e
		WHERE
			e.TestId NOT IN ($Ids0_1)
	) e_1
WHERE
	e_1.RowNumber = 1l
ORDER BY
	e_1.Id

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.TestId as TestId
FROM
	TestTable t1

