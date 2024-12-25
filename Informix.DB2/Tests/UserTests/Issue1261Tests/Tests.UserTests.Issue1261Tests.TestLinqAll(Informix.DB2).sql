BeforeExecute
-- Informix.DB2 Informix

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			GrandChild x
		WHERE
			x.ParentID = 1 AND NOT (x.ChildID = 11 AND x.GrandChildID = 777)
	)
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	NOT EXISTS(
		SELECT
			*
		FROM
			GrandChild x
		WHERE
			x.ParentID = 1 AND NOT (x.GrandChildID = 777 AND x.ChildID = 11)
	)
FROM table(set{1})

