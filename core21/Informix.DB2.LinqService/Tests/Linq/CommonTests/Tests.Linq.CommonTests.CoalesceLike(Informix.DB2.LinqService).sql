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
		WHEN CASE
			WHEN p.FirstName IS NULL THEN NULL
			ELSE CASE
				WHEN p.FirstName LIKE 'Jo%'
					THEN 't'
				ELSE 'f'
			END
		END IS NULL
			THEN 'f'
		WHEN p.FirstName IS NULL THEN NULL
		ELSE CASE
			WHEN p.FirstName LIKE 'Jo%'
				THEN 't'
			ELSE 'f'
		END
	END = 't'

