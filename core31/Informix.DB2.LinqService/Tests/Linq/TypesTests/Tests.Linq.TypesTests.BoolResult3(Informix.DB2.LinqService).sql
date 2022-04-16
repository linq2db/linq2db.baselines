BeforeExecute
-- Informix.DB2 Informix

SELECT
	Cast(CASE
		WHEN p.PersonID = 1 THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM
	Person p

