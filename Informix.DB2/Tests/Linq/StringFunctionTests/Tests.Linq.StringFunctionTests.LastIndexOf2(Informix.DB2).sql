-- Informix.DB2 Informix

SELECT
	p_1.ID,
	p_1.FirstName
FROM
	(
		SELECT
			'123' || p.FirstName || '012345' as FirstName,
			p.FirstName as FirstName_1,
			p.PersonID as ID
		FROM
			Person p
		WHERE
			p.PersonID = 1
	) p_1
WHERE
	(CHAR_LENGTH('123' || p_1.FirstName_1 || '012345.') - 1) - CharIndex('321', Reverse(Substr(p_1.FirstName, 6, CHAR_LENGTH('123' || p_1.FirstName_1 || '012345.') - 6))) = 10 AND
	CharIndex('123', p_1.FirstName, 6) <> 0

