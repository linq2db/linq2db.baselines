BeforeExecute
-- Informix.DB2 Informix
DECLARE @param VarChar(4) -- String
SET     @param = 'john'

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	Lower(p.FirstName) = @param::NVarChar(4) AND p.PersonID = 1

