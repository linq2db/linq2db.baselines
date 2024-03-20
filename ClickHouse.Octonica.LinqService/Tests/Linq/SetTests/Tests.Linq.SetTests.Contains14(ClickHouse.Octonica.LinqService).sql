BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

BeforeExecute
-- ClickHouse.Octonica ClickHouse

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
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

