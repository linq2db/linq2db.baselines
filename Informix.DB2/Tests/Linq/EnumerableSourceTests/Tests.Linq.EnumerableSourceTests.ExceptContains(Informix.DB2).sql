BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN r.PersonID IN (1, 2, 3) THEN 't'
		ELSE 'f'
	END::BOOLEAN
FROM
	Person r

