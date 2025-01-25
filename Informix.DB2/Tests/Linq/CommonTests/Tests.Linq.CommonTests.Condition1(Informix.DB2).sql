BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN p.FirstName IS NULL OR CHAR_LENGTH(p.FirstName) = 0
			THEN 't'
		ELSE 'f'
	END::BOOLEAN,
	p.FirstName,
	CASE
		WHEN p.MiddleName IS NULL OR CHAR_LENGTH(p.MiddleName) = 0
			THEN 't'
		ELSE 'f'
	END::BOOLEAN,
	p.MiddleName,
	p.LastName
FROM
	Person p

