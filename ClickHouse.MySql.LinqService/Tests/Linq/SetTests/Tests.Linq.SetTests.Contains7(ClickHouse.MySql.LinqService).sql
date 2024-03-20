BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN toInt32(11) IN (
			SELECT
				c_1.ParentID
			FROM
				Child c_1
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

