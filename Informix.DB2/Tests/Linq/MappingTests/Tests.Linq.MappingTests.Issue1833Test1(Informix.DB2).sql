BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	e.PersonID,
	e.FirstName,
	e.LastName,
	e.FirstName || ':' || e.LastName
FROM
	Person e
WHERE
	e.PersonID = 1

