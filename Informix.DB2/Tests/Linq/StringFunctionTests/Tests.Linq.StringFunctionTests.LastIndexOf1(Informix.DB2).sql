BeforeExecute
-- Informix.DB2 Informix
DECLARE @Length Integer(4) -- Int32
SET     @Length = 1

SELECT
	p.FirstName,
	p.PersonID,
	p.LastName,
	p.MiddleName,
	p.Gender
FROM
	Person p
WHERE
	((CHAR_LENGTH(p.LastName || '.') - 1) - CharIndex('p', Reverse(p.LastName))) - @Length::Int = 1 AND
	CharIndex('p', p.LastName) <> 0 AND p.PersonID = 1

