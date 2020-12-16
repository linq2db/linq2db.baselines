BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN (p.FirstName IS NULL OR Length(p.FirstName) = 0)
			THEN 't'
		ELSE 'f'
	END
FROM
	Person p
WHERE
	p.PersonID = 1

