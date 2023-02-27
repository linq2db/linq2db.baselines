BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN NULL IN (
			SELECT
				c_1.Value1
			FROM
				Parent c_1
		)
			THEN toUInt8(1)
		ELSE toUInt8(0)
	END

