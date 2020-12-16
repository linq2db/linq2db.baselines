BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN (p.FirstName IS NULL OR Length(p.FirstName) = 0)
			THEN 't'
		ELSE 'f'
	END,
	p.FirstName,
	CASE
		WHEN (p.MiddleName IS NULL OR Length(p.MiddleName) = 0)
			THEN 't'
		ELSE 'f'
	END,
	p.MiddleName,
	p.LastName
FROM
	Person p

