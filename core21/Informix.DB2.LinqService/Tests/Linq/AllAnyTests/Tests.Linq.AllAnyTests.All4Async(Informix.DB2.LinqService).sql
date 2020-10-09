BeforeExecute
-- Informix.DB2 Informix (asynchronously)

SELECT FIRST 1
	(NOT EXISTS(
		SELECT 
			*
		FROM
			Child c_1
		WHERE
			c_1.ParentID <= 3
	))
FROM SYSTABLES

