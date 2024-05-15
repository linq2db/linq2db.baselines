BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN p.FirstName IS NULL OR CHAR_LENGTH(p.FirstName) = 0
			THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM
	Person p
WHERE
	p.PersonID = 1

