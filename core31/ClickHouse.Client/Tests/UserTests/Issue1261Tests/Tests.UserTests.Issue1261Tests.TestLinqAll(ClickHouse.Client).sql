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
			THEN toInt32(1)
		ELSE toInt32(0)
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
			THEN toInt32(1)
		ELSE toInt32(0)
	END

