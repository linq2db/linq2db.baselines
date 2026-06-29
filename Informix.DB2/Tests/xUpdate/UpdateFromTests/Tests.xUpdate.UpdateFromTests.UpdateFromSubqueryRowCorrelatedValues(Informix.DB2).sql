-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

-- Informix.DB2 Informix

UPDATE
	UpdateSubquerySourceTable x
SET
	FirstName = (
		SELECT
			CASE
				WHEN canChange.Id IS NOT NULL THEN canChange.FirstName
				ELSE x.FirstName
			END
		FROM
			(
				SELECT
					1 as c1
				FROM table(set{1})
			) t1
				LEFT JOIN UpdateSubquerySourceTable canChange ON canChange.Id = x.Id + 1
	),
	LastName = (
		SELECT
			CASE
				WHEN canChange_1.Id IS NOT NULL THEN canChange_1.LastName
				ELSE x.LastName
			END
		FROM
			(
				SELECT
					1 as c1
				FROM table(set{1})
			) t2
				LEFT JOIN UpdateSubquerySourceTable canChange_1 ON canChange_1.Id = x.Id + 1
	)
WHERE
	x.Id = 1

-- Informix.DB2 Informix

SELECT
	t1.Id,
	t1.FirstName,
	t1.LastName
FROM
	UpdateSubquerySourceTable t1
ORDER BY
	t1.Id

-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

