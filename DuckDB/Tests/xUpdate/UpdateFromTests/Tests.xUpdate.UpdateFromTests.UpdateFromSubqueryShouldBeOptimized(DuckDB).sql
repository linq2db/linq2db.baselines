-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4

-- DuckDB

UPDATE
	UpdateSubquerySourceTable
SET
	FirstName = CASE
		WHEN canChange.Id IS NOT NULL THEN canChange.FirstName
		ELSE x.FirstName
	END,
	LastName = CASE
		WHEN canChange.Id IS NOT NULL THEN canChange.LastName
		ELSE x.LastName
	END
FROM
	UpdateSubquerySourceTable x
		LEFT JOIN UpdateSubquerySourceTable canChange ON canChange.Id = x.Id + 1
WHERE
	x.Id = 1 AND UpdateSubquerySourceTable.Id = x.Id

-- DuckDB

SELECT
	t1.Id,
	t1.FirstName,
	t1.LastName
FROM
	UpdateSubquerySourceTable t1
ORDER BY
	t1.Id

-- DuckDB

DELETE FROM
	Person t1
WHERE
	t1.PersonID > 4

