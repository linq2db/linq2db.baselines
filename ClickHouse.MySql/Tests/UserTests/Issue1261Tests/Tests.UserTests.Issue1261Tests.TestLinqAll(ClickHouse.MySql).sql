BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN  NOT EXISTS (
			SELECT
				*
			FROM
				GrandChild x
			WHERE
				x.ParentID = 1 AND NOT (x.ChildID = 11 AND x.GrandChildID = 777)
		)
			THEN true
		ELSE false
	END

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN  NOT EXISTS (
			SELECT
				*
			FROM
				GrandChild x
			WHERE
				x.ParentID = 1 AND NOT (x.GrandChildID = 777 AND x.ChildID = 11)
		)
			THEN true
		ELSE false
	END

