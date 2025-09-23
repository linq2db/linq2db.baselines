BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @Length Integer(4) -- Int32
SET     @Length = 4

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	CHAR_LENGTH(p.FirstName || '.') - 1 = @Length AND p.PersonID = 1

