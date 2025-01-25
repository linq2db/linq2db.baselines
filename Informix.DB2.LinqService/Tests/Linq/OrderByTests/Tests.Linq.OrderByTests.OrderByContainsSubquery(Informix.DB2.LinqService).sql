BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.PersonID,
	t1.LastName,
	CASE
		WHEN t1.PersonID IN (1, 3) THEN 't'
		ELSE 'f'
	END
FROM
	Person t1
ORDER BY
	CASE
		WHEN t1.PersonID IN (1, 3) THEN 't'
		ELSE 'f'
	END::BOOLEAN

