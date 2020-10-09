BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	EXISTS(
		SELECT 
			*
		FROM
			Parent p
		WHERE
			p.ParentID = 1 AND p.ParentID = 1
	)
FROM SYSTABLES

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	EXISTS(
		SELECT 
			*
		FROM
			Parent p
		WHERE
			p.ParentID = 1 AND p.ParentID = 2
	)
FROM SYSTABLES

