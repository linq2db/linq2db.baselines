BeforeExecute
-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN NULL IN (
			SELECT
				c_1.Value1
			FROM
				Parent c_1
		)
			THEN toInt32(1)
		ELSE toInt32(0)
	END

