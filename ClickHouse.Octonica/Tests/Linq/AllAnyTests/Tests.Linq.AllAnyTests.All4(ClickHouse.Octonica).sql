BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN (NOT EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID <= toInt32(3)
		))
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

