BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Parent p
			WHERE
				p.ParentID = toInt32(1) AND p.ParentID = toInt32(1)
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Parent p
			WHERE
				p.ParentID = toInt32(2) AND p.ParentID = toInt32(1)
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

