BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	r.FirstName,
	r.PersonID,
	r.LastName,
	r.MiddleName,
	r.Gender
FROM
	Person r
WHERE
	r.PersonID = 4 AND (r.MiddleName NOT IN ('222') AND r.MiddleName IS NOT NULL)

