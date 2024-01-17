BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN toInt32(1) IN (
			SELECT
				c_1.ParentID
			FROM
				Child c_1
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

