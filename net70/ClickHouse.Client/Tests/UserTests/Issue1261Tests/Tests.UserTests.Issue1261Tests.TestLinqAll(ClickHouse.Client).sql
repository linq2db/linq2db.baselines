BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				GrandChild x
			WHERE
				x.ParentID = toInt32(1) AND NOT (x.ChildID = toInt32(11) AND x.GrandChildID = toInt32(777))
		))
			THEN true
		ELSE false
	END

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				GrandChild x
			WHERE
				x.ParentID = toInt32(1) AND NOT (x.GrandChildID = toInt32(777) AND x.ChildID = toInt32(11))
		))
			THEN true
		ELSE false
	END

