BeforeExecute
-- Informix.DB2 Informix
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

SELECT FIRST 2
	p.PersonID,
	p.Gender,
	p.FirstName,
	p.MiddleName,
	p.LastName
FROM
	Person p
WHERE
	p.PersonID = @ID

