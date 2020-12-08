BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN p.PersonID = 1 THEN 't'
		ELSE 'f'
	END
FROM
	Person p

