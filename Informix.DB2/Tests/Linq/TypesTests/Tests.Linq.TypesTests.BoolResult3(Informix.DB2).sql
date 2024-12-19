BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN p.PersonID = 1 THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	Person p

