BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN CHAR_LENGTH(p.FirstName) = 0 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	Person p
WHERE
	p.PersonID = 1

