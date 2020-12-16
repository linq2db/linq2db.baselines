BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Person t1
			WHERE
				t1.PersonID = 1
		)
			THEN 't'
		ELSE 'f'
	END
FROM SYSTABLES

