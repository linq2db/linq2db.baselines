BeforeExecute
-- Informix.DB2 Informix
DECLARE @Length Integer(4) -- Int32
SET     @Length = 3

SELECT
	p.PersonID,
	'123' || p.FirstName || '012345'
FROM
	Person p
WHERE
	p.PersonID = 1 AND ((CHAR_LENGTH('123' || p.FirstName || '012345.') - 1) - CharIndex('321', Reverse(Substr('123' || p.FirstName || '012345', 6, CHAR_LENGTH('123' || p.FirstName || '012345.') - 6)))) - @Length::Int = 7 AND
	CharIndex('123', '123' || p.FirstName || '012345', 6) <> 0

