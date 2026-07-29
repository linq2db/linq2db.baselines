-- DuckDB
SELECT
	(
		SELECT
			a_Reference.Name
		FROM
			TestTable t1
				INNER JOIN Reference a_Reference ON t1.ReferenceId = a_Reference.Id
		WHERE
			g_1.Id = t1.Id
		LIMIT 1
	)
FROM
	TestTable g_1

-- DuckDB
SELECT
	t1.Id,
	t1.Name,
	t1.ReferenceId,
	a_Reference.Id,
	a_Reference.Name
FROM
	TestTable t1
		INNER JOIN Reference a_Reference ON t1.ReferenceId = a_Reference.Id

-- DuckDB
SELECT
	t1.Id,
	t1.Name,
	t1.ReferenceId
FROM
	TestTable t1

