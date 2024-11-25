BeforeExecute
-- ClickHouse.MySql ClickHouse

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				Person t1
		) THEN true
		ELSE false
	END

