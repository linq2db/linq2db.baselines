BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				GrandChild x
			WHERE
				x.ParentID = 1 AND x.ParentID IS NOT NULL AND NOT (x.ChildID = 11 AND x.ChildID IS NOT NULL AND x.GrandChildID = 777 AND x.GrandChildID IS NOT NULL)
		)
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM table(set{1})

BeforeExecute
-- Informix.DB2 Informix

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				GrandChild x
			WHERE
				x.ParentID = 1 AND x.ParentID IS NOT NULL AND NOT (x.GrandChildID = 777 AND x.GrandChildID IS NOT NULL AND x.ChildID = 11 AND x.ChildID IS NOT NULL)
		)
			THEN 't'::BOOLEAN
		ELSE 'f'::BOOLEAN
	END::BOOLEAN
FROM table(set{1})

