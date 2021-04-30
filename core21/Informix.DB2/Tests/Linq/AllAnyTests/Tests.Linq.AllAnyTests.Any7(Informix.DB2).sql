BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	Cast(CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child t1
		)
			THEN 't'
		ELSE 'f'
	END as BOOLEAN)
FROM SYSTABLES

