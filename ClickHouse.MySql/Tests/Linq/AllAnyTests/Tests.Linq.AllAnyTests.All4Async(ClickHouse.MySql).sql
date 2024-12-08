BeforeExecute
-- ClickHouse.MySql ClickHouse (asynchronously)

SELECT
	CASE
		WHEN NOT EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID <= 3
		)
			THEN true
		ELSE false
	END

