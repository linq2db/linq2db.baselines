BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

