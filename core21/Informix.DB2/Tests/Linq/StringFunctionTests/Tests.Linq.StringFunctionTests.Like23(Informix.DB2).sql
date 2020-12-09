BeforeExecute
-- Informix.DB2 Informix
DECLARE @pattern VarChar(6) -- String
SET     @pattern = '%h~%n%'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	NOT p.FirstName LIKE @pattern ESCAPE '~' AND p.PersonID = 1

