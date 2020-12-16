BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Parent p
		)
			THEN 't'
		ELSE 'f'
	END
FROM SYSTABLES

