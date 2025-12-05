-- ClickHouse.Octonica ClickHouse

SELECT
	CASE
		WHEN 2 IN (
			SELECT
				c_1.Id
			FROM
				AsyncDataTable c_1
		)
			THEN true
		ELSE false
	END

