BeforeExecute
-- Informix.DB2 Informix
DECLARE @p VarChar(3) -- String
SET     @p = '123'

SELECT
	p.PersonID,
	'123' || p.FirstName || '012345'
FROM
	Person p
WHERE
	p.PersonID = 1 AND CHAR_LENGTH('123' || p.FirstName || '012345') - CharIndex('321', Reverse(Substr('123' || p.FirstName || '012345', 6, CHAR_LENGTH('123' || p.FirstName || '012345') - 5))) = 10 AND
	(CharIndex(@p, '123' || p.FirstName || '012345', 6) <> 0 OR CharIndex(@p, '123' || p.FirstName || '012345', 6) IS NULL)

