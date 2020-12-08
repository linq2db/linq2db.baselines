BeforeExecute
-- Informix.DB2 Informix
DECLARE @str_1 VarChar(6) -- String
SET     @str_1 = '%o~%h%'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	NOT p.FirstName LIKE @str_1 ESCAPE '~' AND p.PersonID = 1

