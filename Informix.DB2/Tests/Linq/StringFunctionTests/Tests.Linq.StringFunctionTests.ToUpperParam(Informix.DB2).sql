-- Informix.DB2 Informix
DECLARE @param VarChar(4) -- String
SET     @param = 'JOHN'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	Upper(p.FirstName) = @param::NVarChar(4) AND p.PersonID = 1

