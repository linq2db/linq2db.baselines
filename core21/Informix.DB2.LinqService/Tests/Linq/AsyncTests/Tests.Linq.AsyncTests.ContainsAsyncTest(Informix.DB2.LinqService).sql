BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	EXISTS(
		SELECT 
			*
		FROM
			Person t1
		WHERE
			t1.PersonID = 1
	)
FROM SYSTABLES

