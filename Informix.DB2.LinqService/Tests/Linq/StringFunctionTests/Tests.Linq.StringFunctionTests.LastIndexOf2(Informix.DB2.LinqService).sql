BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT
	p.PersonID,
	'123' || p.FirstName || '012345'
FROM
	Person p
WHERE
	p.PersonID = 1 AND (CHAR_LENGTH('123' || p.FirstName || '012345.') - 1) - CharIndex('321', Reverse(Substr('123' || p.FirstName || '012345', 6, CHAR_LENGTH('123' || p.FirstName || '012345.') - 6))) = 10 AND
	CharIndex('123', '123' || p.FirstName || '012345', 6) <> 0

