-- ClickHouse.Driver ClickHouse

SELECT
	CASE
		WHEN 11 IN (
			SELECT
				c_1.ParentID
			FROM
				Child c_1
		)
			THEN true
		ELSE false
	END

