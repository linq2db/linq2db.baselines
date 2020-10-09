BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	EXISTS(
		SELECT 
			*
		FROM
			Parent p
	)
FROM SYSTABLES

