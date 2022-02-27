BeforeExecute
-- Informix.DB2 Informix
DECLARE @str VarChar(6) -- String
SET     @str = '%o~%h%'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	NOT p.FirstName LIKE @str ESCAPE '~' AND p.PersonID = 1

