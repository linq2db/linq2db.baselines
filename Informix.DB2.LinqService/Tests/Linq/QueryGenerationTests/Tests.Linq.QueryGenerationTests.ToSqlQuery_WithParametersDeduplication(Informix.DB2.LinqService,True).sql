BeforeExecute
-- Informix.DB2 Informix

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = 'John' OR p.LastName = 'John'

BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @firstName VarChar(4) -- String
SET     @firstName = 'John'

SELECT FIRST 2
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	p.FirstName = @firstName OR p.LastName = @firstName

