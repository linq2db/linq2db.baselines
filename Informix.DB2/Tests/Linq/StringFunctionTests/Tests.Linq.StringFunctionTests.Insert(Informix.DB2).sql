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
	CASE
		WHEN CHAR_LENGTH(p.FirstName || '.') = 3 THEN p.FirstName || '123'
		ELSE Substr(p.FirstName, 1, 2) || '123' || Substr(p.FirstName, (CHAR_LENGTH(p.FirstName || '.') - 1) - (CHAR_LENGTH(p.FirstName || '.') - 3) + 1, CHAR_LENGTH(p.FirstName || '.') - 3)
	END = 'Jo123hn' AND
	p.PersonID = 1

