BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				1
			FROM
				Child c_1
			WHERE
				c_1.ParentID <= 3
		)
			THEN true
		ELSE false
	END

