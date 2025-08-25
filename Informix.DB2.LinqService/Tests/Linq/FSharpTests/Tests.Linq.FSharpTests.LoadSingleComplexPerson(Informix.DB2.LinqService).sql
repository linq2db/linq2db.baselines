BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT FIRST 2
	p.PersonID,
	p.FirstName,
	p.MiddleName,
	p.LastName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = @p

