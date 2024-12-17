BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID = 1
		)
			THEN true
		ELSE false
	END

BeforeExecute
-- ClickHouse.Client ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				Child c_1
			WHERE
				c_1.ParentID = -1
		)
			THEN true
		ELSE false
	END

