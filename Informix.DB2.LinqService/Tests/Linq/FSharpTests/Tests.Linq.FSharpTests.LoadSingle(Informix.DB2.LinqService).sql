BeforeExecute
-- Informix.DB2 Informix
DECLARE @p Integer(4) -- Int32
SET     @p = 1

SELECT
	p.PersonID,
	p.FirstName,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.PersonID = @p

