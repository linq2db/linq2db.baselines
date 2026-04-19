-- Informix.DB2 Informix

DELETE FROM
	Person
WHERE
	Person.PersonID > 4

-- Informix.DB2 Informix

UPDATE
	UpdateSubquerySourceTable
SET
	FirstName = (
		SELECT
			canChange.FirstName
		FROM
			UpdateSubquerySourceTable canChange
		WHERE
			canChange.Id = UpdateSubquerySourceTable.Id + 1
	),
	LastName = (
		SELECT
			canChange_1.LastName
		FROM
			UpdateSubquerySourceTable canChange_1
		WHERE
			canChange_1.Id = UpdateSubquerySourceTable.Id + 1
	)
WHERE
	UpdateSubquerySourceTable.Id = 1

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

