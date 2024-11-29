BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Child c_1
			WHERE
				c_1.ParentID = 1
		)
			THEN true
		ELSE false
	END

BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Child c_1
			WHERE
				c_1.ParentID = -1
		)
			THEN true
		ELSE false
	END

