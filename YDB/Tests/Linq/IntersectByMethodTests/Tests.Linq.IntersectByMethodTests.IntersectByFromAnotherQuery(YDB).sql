-- YDB Ydb

$CTE_1 = 	SELECT DISTINCT
		x.TestId as TestId
	FROM
		TestTable x
	WHERE
		x.Id <= 2
;

SELECT
	t2.Id as Id,
	t2.TestId as TestId
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.TestId ORDER BY e.Id) as RowNumber,
			e.Id as Id,
			e.TestId as TestId
		FROM
			TestTable e
		WHERE
			e.TestId IN (
				SELECT
					t1.TestId
				FROM
					$CTE_1 t1
			)
	) t2
WHERE
	t2.RowNumber = 1l
ORDER BY
	t2.Id DESC

-- YDB Ydb

SELECT
	t1.Id as Id,
	t1.TestId as TestId
FROM
	TestTable t1

