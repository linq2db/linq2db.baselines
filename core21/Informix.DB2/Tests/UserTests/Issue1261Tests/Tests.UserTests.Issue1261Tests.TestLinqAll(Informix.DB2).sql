BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	(NOT EXISTS(
		SELECT
			*
		FROM
			GrandChild x
		WHERE
			x.ParentID = 1 AND ((x.ChildID <> 11 OR x.ChildID IS NULL) OR (x.GrandChildID <> 777 OR x.GrandChildID IS NULL))
	))
FROM SYSTABLES

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	(NOT EXISTS(
		SELECT
			*
		FROM
			GrandChild x
		WHERE
			x.ParentID = 1 AND ((x.GrandChildID <> 777 OR x.GrandChildID IS NULL) OR (x.ChildID <> 11 OR x.ChildID IS NULL))
	))
FROM SYSTABLES

