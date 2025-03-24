BeforeExecute
--  Informix.DB2 Informix

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
		WHEN CHAR_LENGTH(p.FirstName) = 2 THEN p.FirstName || '123'
		ELSE Substr(p.FirstName, 1, 2) || '123' || Substr(p.FirstName, CHAR_LENGTH(p.FirstName) - (CHAR_LENGTH(p.FirstName) - 2) + 1, CHAR_LENGTH(p.FirstName) - 2)
	END = 'Jo123hn' AND
	p.PersonID = 1

