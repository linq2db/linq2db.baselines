BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID = toInt32(1)
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

BeforeExecute
-- ClickHouse.Octonica ClickHouse (asynchronously)

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID = toInt32(-1)
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

