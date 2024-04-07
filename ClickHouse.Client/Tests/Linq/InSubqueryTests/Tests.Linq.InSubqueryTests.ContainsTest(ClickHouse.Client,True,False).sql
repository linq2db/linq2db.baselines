BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN toInt32(1) IN (
			SELECT
				c_1.ParentID
			FROM
				Child c_1
		)
			THEN true
		ELSE false
	END

