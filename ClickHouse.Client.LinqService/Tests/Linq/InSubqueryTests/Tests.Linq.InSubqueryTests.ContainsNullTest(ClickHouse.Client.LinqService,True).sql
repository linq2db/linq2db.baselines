BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN 1 IN (
			SELECT
				1
			FROM
				Parent c_1
			WHERE
				c_1.Value1 IS NULL
		)
			THEN true
		ELSE false
	END

