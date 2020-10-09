BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	EXISTS(
		SELECT 
			*
		FROM
			Child t1
	)
FROM SYSTABLES

