BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.PersonID,
	t1.LastName
FROM
	Person t1
ORDER BY
	Cast(CASE
		WHEN t1.PersonID IN (1, 3)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)

