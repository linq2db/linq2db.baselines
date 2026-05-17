-- Informix.DB2 Informix

SELECT
	e_1.Id,
	e_1.TestId
FROM
	(
		SELECT
			ROW_NUMBER() OVER (PARTITION BY e.TestId ORDER BY e.Id) as RowNumber,
			e.Id,
			e.TestId
		FROM
			TestTable e
		WHERE
			e.TestId NOT IN (20)
	) e_1
WHERE
	e_1.RowNumber = 1
ORDER BY
	e_1.Id

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.TestId
FROM
	TestTable t1

