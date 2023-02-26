BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN NULL IN (
			SELECT
				c_1.Value1
			FROM
				Parent c_1
		)
			THEN true
		ELSE false
	END

