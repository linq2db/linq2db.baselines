BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN r.PersonID IN (1, 2, 3) THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM
	Person r

