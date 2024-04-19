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
		WHEN p.FirstName LIKE 'Jo%' ESCAPE '~' THEN 't'
		ELSE 'f'
	END::BOOLEAN = 't' AND
	p.FirstName IS NOT NULL

